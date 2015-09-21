--  *********************************************************************
--  Update Database Script
--  *********************************************************************
--  Change Log: org/kuali/ole/1.6.2/db.changelog-20150731.xml
--  *********************************************************************

--  Lock Database
--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_LOAD_KRCR_PARM_T_1.6.2_mysql::ole
SET sql_mode='NO_BACKSLASH_ESCAPES'
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'MAX_NO_OF_THREAD_FOR_RENEW_SERVICE', 'OLE7005', '1', 'CONFG', '10', 'This parameter is having option to set default number of thread for renew service.', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'LOAN_WHILE_FASTADD', 'LOAN_WHILE_FASTADD-1', '1', 'CONFG', 'true', 'This parameter is used to loan item created through fastadd automatically.', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DESC', 'Describe', 'ITEM_SEARCHSCOPE_FIELD', 'ITEM_SEARCHSCOPE_FIELD-1', '1', 'CONFG', 'phrase,ItemBarcode_search', 'This is used to specify search scope(all,any,phrase),search field in the Search Workbench for DocType Item', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DESC', 'Describe', 'BIB_SEARCHSCOPE_FIELD', 'BIB_SEARCHSCOPE_FIELD-1', '1', 'CONFG', 'phrase,any', 'This is used to specify search scope(all,any,phrase),search field in the Search Workbench for DocType Bib', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DESC', 'Describe', 'HOLDINGS_SEARCHSCOPE_FIELD', 'HOLDINGS_SEARCHSCOPE_FIELD-1', '1', 'CONFG', 'and,LocalId_search', 'This is used to specify search scope(all,any,phrase),search field in the Search Workbench for DocType Holdings', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DESC', 'Describe', 'EHOLDINGS_SEARCHSCOPE_FIELD', 'EHOLDINGS_SEARCHSCOPE_FIELD-1', '1', 'CONFG', 'phrase,any', 'This is used to specify search scope(all,any,phrase),search field in the Search Workbench for DocType EHoldings', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DESC', 'Describe', 'BIB_RENDER_PRINT', 'BIB_RENDER_PRINT-1', '1', 'CONFG', 'true', 'This is used to render print button for Bib in Editor', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DESC', 'Describe', 'ITEM_LOCATION_DISCLOSURE', 'ITEM_LOCATION_DISCLOSURE-1', '1', 'CONFG', 'true', 'This is used to open or close item location in Item in Editor', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-PURAP', 'Requisition', 'DEFAULT_ACCOUNTINGLINE_CHART_CODE', 'DEFAULT_ACCOUNTINGLINE_CHART_CODE-1', '1', 'CONFG', 'UC', 'This is used to set default chart code on accounting line in Requisition', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-PURAP', 'Requisition', 'DEFAULT_ACCOUNTINGLINE_OBJECT_CODE', 'DEFAULT_ACCOUNTINGLINE_OBJECT_CODE-1', '1', 'CONFG', '4000', 'This is used to set default object code on accounting line in Requisition', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Describe', 'DEFAULT_TIME_FOR_DUE_DATE', 'DEFAULT_TIME_FOR_DUE_DATE-1', '1', 'CONFG', '23:59:00', 'This parameter is for providing the default time whenever the time field is left blank when altering the due date of an item. Give the time in the format HH:MM:SS (24 Hour Format)', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DESC', 'Describe', 'HOLDINGS_DEFAULT_NOTE_NONPUBLIC', 'HOLDINGS_DEFAULT_NOTE_NONPUBLIC-1', '1', 'CONFG', 'nonPublic', 'This parameter is used to set default not type for Holdings', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DESC', 'Describe', 'ITEM_DEFAULT_NOTE_NONPUBLIC', 'ITEM_DEFAULT_NOTE_NONPUBLIC-1', '1', 'CONFG', 'nonPublic', 'This parameter is used to set default not type for Item', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DESC', 'Describe', 'HOLDINGS_SUPRESS_SHELVINGORDER', 'SUPRESS_SHELVINGORDER-1', '1', 'CONFG', 'true', 'This parameter is used to supress shelving order in Holdings', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DESC', 'Describe', 'ITEM_SUPRESS_SHELVINGORDER', 'SUPRESS_SHELVINGORDER-1', '1', 'CONFG', 'true', 'This parameter is used to supress shelving order in Item', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DLVR', 'Deliver', 'DEFAULT_PAGE_SIZE_LOANED_ITEMS', 'DEFAULT_PAGE_SIZE_LOANED_ITEMS-1', '1', 'CONFG', '100', 'This parameter is used to set the default page size to show the existing loaned items in the Loan screen. The values should be any one of these (10,25,50,75,100,150,200).', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DESC', 'Describe', 'DEFAULT_ITEM_TYPE_CODE', 'DEFAULT_ITEM_TYPE_CODE-1', '1', 'CONFG', '', 'This is used set default item type', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DESC', 'Describe', 'BIB_ID_EXISTS_CHECK', 'OLE7806', '1', 'CONFG', 'Y', 'This parameter is having option to turn on/off bib id duplication check.', 'A', 'OLE')
/

INSERT INTO KRCR_PARM_T (NMSPC_CD, CMPNT_CD, PARM_NM, OBJ_ID, VER_NBR, PARM_TYP_CD, VAL, PARM_DESC_TXT, EVAL_OPRTR_CD, APPL_ID) VALUES ('OLE-DESC', 'Describe', 'ITEM_BARCODE_EXISTS_CHECK', 'OLE7007', '1', 'CONFG', 'Y', 'This parameter is having option to turn on/off item barcode duplication check.', 'A', 'OLE')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_LOAD_KRCR_PARM_T_1.6.2_mysql', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 1, '7:6e3d8e9ec0fa95b0fdf086e6aa98f056', 'sql, loadData', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_DLVR_CIRC_DESK_STAFFED::ole
ALTER TABLE ole.OLE_CRCL_DSK_T ADD STAFFED VARCHAR(1) NULL DEFAULT 'Y'
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_CIRC_DESK_STAFFED', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 2, '7:7cadb4c8fe54f4c6ca333cb320622b1a', 'addColumn', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_DLVR_RQST_T::ole
CREATE INDEX OLE_DLVR_RQST_TI2 ON ole.OLE_DLVR_RQST_T(ITM_ID)
/

CREATE INDEX OLE_DLVR_RQST_TI3 ON ole.OLE_DLVR_RQST_T(ITEM_UUID)
/

CREATE INDEX OLE_DLVR_RQST_TI4 ON ole.OLE_DLVR_RQST_T(PTRN_Q_POS)
/

CREATE INDEX OLE_DLVR_RQST_TI5 ON ole.OLE_DLVR_RQST_T(BIB_ID)
/

CREATE INDEX OLE_DLVR_RQST_TI6 ON ole.OLE_DLVR_RQST_T(OLE_PTRN_BARCD)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_RQST_T', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 3, '7:5643c82014bfaea266f630ee26fd8315', 'createIndex (x5)', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_DLVR_TEMP_CIRC_RECORD::ole
CREATE INDEX OLE_DLVR_TEMP_CIRC_RECORD_TI1 ON ole.OLE_DLVR_TEMP_CIRC_RECORD(ITM_ID)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_TEMP_CIRC_RECORD', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 4, '7:0db2e9605a7cc4c384e2903f71124f68', 'createIndex', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_DS_ITEM_T::ole
CREATE INDEX OLE_DS_ITEM_TI1 ON ole.OLE_DS_ITEM_T(BARCODE)
/

CREATE INDEX OLE_DS_ITEM_TI2 ON ole.OLE_DS_ITEM_T(HOLDINGS_ID)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DS_ITEM_T', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 5, '7:f3d8eb0504f6176bf4f5150ca70b30b5', 'createIndex (x2)', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_ASR_ITM_T::ole
CREATE INDEX OLE_ASR_ITM_TI1 ON ole.OLE_ASR_ITM_T(ITM_BAR_CD)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_ASR_ITM_T', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 6, '7:942ba009b3f1b50addfd058334b0249a', 'createIndex', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_DLVR_LOAN_T::ole
CREATE INDEX OLE_DLVR_LOAN_TI1 ON ole.OLE_DLVR_LOAN_T(ITEM_UUID)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_LOAN_T', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 7, '7:2d1f615c7b606cebc6fdee19128db7c2', 'createIndex', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_LOAN_INTRANSIT_HST_T::ole
CREATE INDEX OLE_LOAN_INTRANSIT_HST_TI1 ON ole.OLE_LOAN_INTRANSIT_HISTORY_T(ITEM_UUID)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_LOAN_INTRANSIT_HST_T', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 8, '7:90c0e0be15c24ae5adb3ac0bd8ab4e08', 'createIndex', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_DS_HOLDINGS_T::ole
CREATE INDEX OLE_DS_HOLDINGS_TI1 ON ole.OLE_DS_HOLDINGS_T(BIB_ID)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DS_HOLDINGS_T', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 9, '7:23b14570ae48129e0f9300389682ac13', 'createIndex', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_DS_EXT_OWNERSHIP_T::ole
CREATE INDEX OLE_DS_EXT_OWNERSHIP_TI1 ON ole.OLE_DS_EXT_OWNERSHIP_T(HOLDINGS_ID)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DS_EXT_OWNERSHIP_T', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 10, '7:a379ec78e42896cab2cd7d65f104dcbd', 'createIndex', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_DS_BIB_HOLDINGS_T::ole
CREATE INDEX OLE_DS_BIB_HOLDINGS_TI1 ON ole.OLE_DS_BIB_HOLDINGS_T(BIB_ID)
/

CREATE INDEX OLE_DS_BIB_HOLDINGS_TI2 ON ole.OLE_DS_BIB_HOLDINGS_T(HOLDINGS_ID)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DS_BIB_HOLDINGS_T', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 11, '7:444a2acb64717b3ab6b6f0b154c293e9', 'createIndex (x2)', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_DS_ITEM_HOLDINGS_T::ole
CREATE INDEX OLE_DS_ITEM_HOLDINGS_TI1 ON ole.OLE_DS_ITEM_HOLDINGS_T(HOLDINGS_ID)
/

CREATE INDEX OLE_DS_ITEM_HOLDINGS_TI2 ON ole.OLE_DS_ITEM_HOLDINGS_T(ITEM_ID)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DS_ITEM_HOLDINGS_T', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 12, '7:8b9db1141d67ae022f43d135fc7545c1', 'createIndex (x2)', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_DS_DOC_FIELD_T_ID::ole
INSERT INTO OLE_DS_DOC_FIELD_T (DISPLAY_LABEL,DESCRIPTION,DOC_FIELD_ID,DOC_FORMAT_ID,DOC_TYPE_ID,EXCLUDE_PATH,INCLUDE_PATH,IS_DISPLAY,IS_EXPORT,IS_FACET,IS_GLOBAL_EDIT,IS_SEARCH,NAME,OBJ_ID,VER_NBR)VALUES ('Holdings Location','',500,9,4,'','','Y','N','N','N','N','HoldingsLocation_display','500',1)
/

INSERT INTO OLE_DS_DOC_FIELD_T (DISPLAY_LABEL,DESCRIPTION,DOC_FIELD_ID,DOC_FORMAT_ID,DOC_TYPE_ID,EXCLUDE_PATH,INCLUDE_PATH,IS_DISPLAY,IS_EXPORT,IS_FACET,IS_GLOBAL_EDIT,IS_SEARCH,NAME,OBJ_ID,VER_NBR)VALUES ('Holdings Call Number','',501,9,4,'','','Y','N','N','N','N','HoldingsCallNumber_display','501',1)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DS_DOC_FIELD_T_ID', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 13, '7:69d72473af2def40504b2980cc9bdca2', 'sql (x2)', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_DS_DOC_FIELD_T_DOC::ole
INSERT INTO OLE_DS_DOC_FIELD_T (DISPLAY_LABEL,DESCRIPTION,DOC_FIELD_ID,DOC_FORMAT_ID,DOC_TYPE_ID,EXCLUDE_PATH,INCLUDE_PATH,IS_DISPLAY,IS_EXPORT,IS_FACET,IS_GLOBAL_EDIT,IS_SEARCH,NAME,OBJ_ID,VER_NBR)VALUES ('Resource Type','',502,1,1,'','','Y','N','N','N','N','ResourceType_display','502',1)
/

INSERT INTO OLE_DS_DOC_FIELD_T (DISPLAY_LABEL,DESCRIPTION,DOC_FIELD_ID,DOC_FORMAT_ID,DOC_TYPE_ID,EXCLUDE_PATH,INCLUDE_PATH,IS_DISPLAY,IS_EXPORT,IS_FACET,IS_GLOBAL_EDIT,IS_SEARCH,NAME,OBJ_ID,VER_NBR)VALUES ('Resource Type','',503,1,1,'','','N','N','N','N','Y','ResourceType_search','503',1)
/

INSERT INTO OLE_DS_DOC_FIELD_T (DISPLAY_LABEL,DESCRIPTION,DOC_FIELD_ID,DOC_FORMAT_ID,DOC_TYPE_ID,EXCLUDE_PATH,INCLUDE_PATH,IS_DISPLAY,IS_EXPORT,IS_FACET,IS_GLOBAL_EDIT,IS_SEARCH,NAME,OBJ_ID,VER_NBR)VALUES ('Carrier','',504,1,1,'','','Y','N','N','N','N','Carrier_display','504',1)
/

INSERT INTO OLE_DS_DOC_FIELD_T (DISPLAY_LABEL,DESCRIPTION,DOC_FIELD_ID,DOC_FORMAT_ID,DOC_TYPE_ID,EXCLUDE_PATH,INCLUDE_PATH,IS_DISPLAY,IS_EXPORT,IS_FACET,IS_GLOBAL_EDIT,IS_SEARCH,NAME,OBJ_ID,VER_NBR)VALUES ('Carrier','',505,1,1,'','','N','N','N','N','Y','Carrier_search','505',1)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DS_DOC_FIELD_T_DOC', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 14, '7:e3bc98d0907ebcde655e0d9d5341d2ae', 'sql (x4)', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::ole_dlvr_loan_notice_hstry_t_bl::ole
ALTER TABLE ole.OLE_DLVR_LOAN_NOTICE_HSTRY_T MODIFY NTC_CNTNT LONGTEXT
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('ole_dlvr_loan_notice_hstry_t_bl', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 15, '7:70a309b3cb24e70f7324eb347745e80c', 'modifyDataType', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_KRIM_PERM_T_T_1.6.2_mysql::ole
SET sql_mode='NO_BACKSLASH_ESCAPES'
/

INSERT INTO KRIM_PERM_T (PERM_ID, OBJ_ID, VER_NBR, PERM_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND) VALUES ('OLE10325', 'OLE70106', '1', '62', 'OLE-PTRN', 'Perform Fast Add Item Operation', 'Allows users to perform fast add item operation', 'Y')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_KRIM_PERM_T_T_1.6.2_mysql', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 16, '7:cb779c1c23e79fd06eb9a27fe681843b', 'sql, loadData', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_KRIM_PERM_ATTR_DATA_T_1.6.2_mysql::ole
SET sql_mode='NO_BACKSLASH_ESCAPES'
/

INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) VALUES ('OLE10380', 'OLE1616', '1', 'OLE10325', '73', '47', 'circView')
/

INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) VALUES ('OLE10381', 'OLE1617', '1', 'OLE10325', '73', '48', 'openFastAdd')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_KRIM_PERM_ATTR_DATA_T_1.6.2_mysql', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 17, '7:a6a72abfac75d241df0cbbd30fc7aa97', 'sql, loadData', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_KRIM_ROLE_PERM_T_1.6.2_mysql::ole
SET sql_mode='NO_BACKSLASH_ESCAPES'
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE12355', 'OLE70559', 'OLE10073', 'OLE10325', 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE12356', 'OLE70560', 'OLE10074', 'OLE10325', 'Y')
/

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, ROLE_ID, PERM_ID, ACTV_IND) VALUES ('OLE12357', 'OLE70561', 'OLE10076', 'OLE10325', 'Y')
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_KRIM_ROLE_PERM_T_1.6.2_mysql', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 18, '7:8359fd7414a6ff84adc5356adb2b3ac5', 'sql, loadData', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_DLVR_RQST_T_ITEM_Q_INX_UK::ole
ALTER TABLE ole.OLE_DLVR_RQST_T ADD CONSTRAINT OLE_DLVR_RQST_T_ITEM_Q_INX_UK UNIQUE (OLE_PTRN_ID, PTRN_Q_POS, ITM_ID)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DLVR_RQST_T_ITEM_Q_INX_UK', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 19, '7:7539d28e362d320a0f6f8d4a6a36f2c1', 'addUniqueConstraint', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_DS_ITM_T_MYSQL::ole
ALTER TABLE OLE_DS_ITEM_T MODIFY BARCODE VARCHAR(30)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DS_ITM_T_MYSQL', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 20, '7:c3ddf2359d341666c14853cd3d57cb42', 'sql', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::ALTER_OLE_LOAN_INTRANSIT_HISTORY_S::ole
TRUNCATE TABLE OLE_LOAN_INTRANSIT_HISTORY_S
/

ALTER TABLE ole.OLE_LOAN_INTRANSIT_HISTORY_S ADD PRIMARY KEY (ID)
/

ALTER TABLE ole.OLE_LOAN_INTRANSIT_HISTORY_S MODIFY ID BIGINT(19) AUTO_INCREMENT
/

set @last_id = (SELECT MAX(CONVERT(ID, SIGNED INTEGER)) from ole.OLE_LOAN_INTRANSIT_HISTORY_T)
/

INSERT INTO OLE_LOAN_INTRANSIT_HISTORY_S VALUES(@last_id)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('ALTER_OLE_LOAN_INTRANSIT_HISTORY_S', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 21, '7:b964732f4d34faf2120e532f59937238', 'sql, addPrimaryKey, addAutoIncrement, sql (x2)', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::ALTER_OLE_RNWL_HISTORY_S::ole
TRUNCATE TABLE OLE_RNWL_HISTORY_S
/

ALTER TABLE ole.OLE_RNWL_HISTORY_S ADD PRIMARY KEY (RNWL_HSTRY_ID)
/

ALTER TABLE ole.OLE_RNWL_HISTORY_S MODIFY RNWL_HSTRY_ID BIGINT(19) AUTO_INCREMENT
/

set @last_id = (SELECT MAX(CONVERT(rnwl_hstry_id, SIGNED INTEGER)) from ole.OLE_RNWL_HISTORY_T)
/

INSERT INTO OLE_RNWL_HISTORY_S VALUES(@last_id)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('ALTER_OLE_RNWL_HISTORY_S', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 22, '7:c1050c34fd2b25e7f29de38194a02eb3', 'sql, addPrimaryKey, addAutoIncrement, sql (x2)', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_NOTICE_TYPE_CONFIG_T::ole
CREATE TABLE ole.OLE_NOTICE_TYPE_CONFIG_T (NOTICE_TYPE_CONFIG_ID INT NULL, CIRC_POLICY_ID VARCHAR(1000) NULL, NOTICE_TYPE VARCHAR(1000) NULL)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_NOTICE_TYPE_CONFIG_T', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 23, '7:97278b800c65a5edb8c6763b21a8f3f1', 'createTable', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_NOTICE_TYPE_CONFIG_T_PK::ole
ALTER TABLE ole.OLE_NOTICE_TYPE_CONFIG_T ADD PRIMARY KEY (NOTICE_TYPE_CONFIG_ID)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_NOTICE_TYPE_CONFIG_T_PK', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 24, '7:59130a8ac178a55b7ef3ef616e1b4036', 'addPrimaryKey', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/1.6.2/db.changelog-20150731.xml::OLE_NOTICE_TYPE_CONFIG_S::ole
CREATE TABLE ole.OLE_NOTICE_TYPE_CONFIG_S (ID BIGINT(19) NULL)
/

ALTER TABLE ole.OLE_NOTICE_TYPE_CONFIG_S ADD PRIMARY KEY (ID)
/

ALTER TABLE ole.OLE_NOTICE_TYPE_CONFIG_S MODIFY ID BIGINT(19) AUTO_INCREMENT
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_NOTICE_TYPE_CONFIG_S', 'ole', 'org/kuali/ole/1.6.2/db.changelog-20150731.xml', NOW(), 25, '7:3e34658547e569fff9713d9071b432d0', 'createTable, addPrimaryKey, addAutoIncrement', '', 'EXECUTED', '3.2.0')
/

--  Release Database Lock
--  Release Database Lock
