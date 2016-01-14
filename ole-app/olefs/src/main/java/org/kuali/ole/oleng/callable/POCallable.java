package org.kuali.ole.oleng.callable;

import org.apache.commons.collections.CollectionUtils;
import org.apache.log4j.Logger;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.codehaus.jettison.json.JSONObject;
import org.kuali.incubator.SolrRequestReponseHandler;
import org.kuali.ole.OLEConstants;
import org.kuali.ole.docstore.common.constants.DocstoreConstants;
import org.kuali.ole.docstore.common.document.Bib;
import org.kuali.ole.module.purap.PurapConstants;
import org.kuali.ole.oleng.batch.profile.model.BatchProcessProfile;
import org.kuali.ole.oleng.handler.CreateReqAndPOBaseServiceHandler;
import org.kuali.ole.oleng.handler.CreateReqAndPOServiceHandler;
import org.kuali.ole.oleng.service.OrderImportService;
import org.kuali.ole.oleng.service.impl.OrderImportServiceImpl;
import org.kuali.ole.pojo.OleBibRecord;
import org.kuali.ole.pojo.OleOrderRecord;
import org.kuali.ole.pojo.OleTxRecord;
import org.kuali.ole.select.OleSelectConstant;
import org.kuali.rice.core.api.resourceloader.GlobalResourceLoader;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;

import java.util.List;
import java.util.concurrent.Callable;

/**
 * Created by SheikS on 1/10/2016.
 */
public class POCallable implements Callable {

    private static final Logger LOG = Logger.getLogger(POCallable.class);
    private final String bibId;

    private BatchProcessProfile batchProcessProfile;
    private OrderImportService oleOrderImportService;
    private CreateReqAndPOBaseServiceHandler createReqAndPOServiceHandler;
    private PlatformTransactionManager transactionManager;
    private SolrRequestReponseHandler solrRequestReponseHandler;

    public POCallable(String bibId, BatchProcessProfile batchProcessProfile, CreateReqAndPOBaseServiceHandler createReqAndPOServiceHandler) {
        this.bibId = bibId;
        this.batchProcessProfile = batchProcessProfile;
        this.createReqAndPOServiceHandler = createReqAndPOServiceHandler;
    }

    @Override
    public Object call() throws Exception {
        String finalResponse = "";
        final JSONObject jsonObject = new JSONObject();
        OleTxRecord oleTxRecord = getOleOrderImportService().processDataMapping(bibId, batchProcessProfile);

        final OleOrderRecord oleOrderRecord = new OleOrderRecord();
        oleTxRecord.setItemType(PurapConstants.ItemTypeCodes.ITEM_TYPE_ITEM_CODE);
        oleTxRecord.setRequisitionSource(OleSelectConstant.REQUISITON_SRC_TYPE_AUTOINGEST);
        oleOrderRecord.setOleTxRecord(oleTxRecord);

        OleBibRecord oleBibRecord = new OleBibRecord();
        Bib bib = getBibDetails(bibId);
        oleBibRecord.setBibUUID(bibId);
        oleBibRecord.setBib(bib);
        oleOrderRecord.setOleBibRecord(oleBibRecord);

        oleOrderRecord.setLinkToOrderOption(OLEConstants.ORDER_RECORD_IMPORT_MARC_ONLY_PRINT);

        final TransactionTemplate template = new TransactionTemplate(getTransactionManager());

        try {
            try {
                finalResponse = (String) template.execute(new TransactionCallback<Object>() {
                    String response;

                    @Override
                    public Object doInTransaction(TransactionStatus status) {
                        try {
                            response = createReqAndPOServiceHandler.processOrder(oleOrderRecord);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        return response;
                    }
                });
            } catch (Exception ex) {
                throw ex;
            } finally {
                this.transactionManager = null;
            }

        } catch (Exception e) {
            e.printStackTrace();
            jsonObject.put("status", "failure");
            jsonObject.put("reason", e.getMessage());
            finalResponse = jsonObject.toString();

        }
        System.out.println("Response : \n" + finalResponse);

        return finalResponse;
    }

    private Bib getBibDetails(String bibId) {
        Bib bib = new Bib();
        String query = "id:" + bibId;
        SolrDocumentList solrDocumentList = getSolrRequestReponseHandler().getSolrDocumentList(query);
        if (solrDocumentList.size() > 0) {
            SolrDocument solrDocument = solrDocumentList.get(0);

            List<String> authors = (List<String>) solrDocument.getFieldValue(DocstoreConstants.TITLE_DISPLAY);
            String author = (CollectionUtils.isNotEmpty(authors)) ? authors.get(0) : "";

            List<String> titles = (List<String>) solrDocument.getFieldValue(DocstoreConstants.TITLE_DISPLAY);
            String title = (CollectionUtils.isNotEmpty(titles)) ? titles.get(0) : "";

            List<String> isbns = (List<String>) solrDocument.getFieldValue(DocstoreConstants.ISBN_DISPLAY);
            String isbn = (CollectionUtils.isNotEmpty(isbns)) ? isbns.get(0) : "";

            List<String> publishers = (List<String>) solrDocument.getFieldValue(DocstoreConstants.PUBLISHER_DISPLAY);
            String publisher = (CollectionUtils.isNotEmpty(publishers)) ? publishers.get(0) : "";

            bib.setTitle(title);
            bib.setAuthor(author);
            bib.setPublisher(publisher);
            bib.setIsbn(isbn);
        }
        return bib;
    }

    public OrderImportService getOleOrderImportService() {
        if (null == oleOrderImportService) {
            oleOrderImportService = new OrderImportServiceImpl();
        }
        return oleOrderImportService;
    }

    public PlatformTransactionManager getTransactionManager() {
        if (transactionManager == null) {
            transactionManager = GlobalResourceLoader.getService("transactionManager");
        }
        return this.transactionManager;
    }

    public SolrRequestReponseHandler getSolrRequestReponseHandler() {
        if (null == solrRequestReponseHandler) {
            solrRequestReponseHandler = new SolrRequestReponseHandler();
        }
        return solrRequestReponseHandler;
    }
}
