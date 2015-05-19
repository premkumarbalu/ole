TRUNCATE TABLE PUR_VNDR_TYP_T
/
INSERT INTO PUR_VNDR_TYP_T (VNDR_TYP_CD,OBJ_ID,VER_NBR,VNDR_TYP_DESC,DOBJ_MAINT_CD_ACTV_IND,VNDR_TAX_NBR_REQ_IND,VNDR_TYP_CHG_ALLW_IND,VNDR_ADDR_TYP_REQ_CD,VNDR_SHOW_RVW_IND,VNDR_RVW_TXT)
  VALUES ('DV','28802CB4F25B7160E043814FD8817160',1.0,'Disbursement Voucher','Y','Y','Y','RM','N','The new vendor, {0}, is about to be routed.<br /> The vendor\'s document ID is {1}.<br /> Please fax your W-9/W-8BEN documentation to 111-111-1111 and reference the Vendor document number on the form. <br /> <br /> For inquiries regarding vendor additions, changes or other vendor-related requests, please contact the workgroup at 222-222-2222 or email <a href="mailto:knoreceipt-l@indiana.edu">knoreceipt-l@indiana.edu</a>. <br /> <br /> For general questions, please contact your local purchasing office. <br /> <br /> <table class="datatable" border="2"><tr><th>Campus</th><th>Hotline</th</tr> <tr><td>Main</td><td>333-333-3333</td></tr> <tr><td>East</td><td>444-444-4444</td></tr> <tr><td>West</td><td>555-555-5555</td></tr> </table> <br /> <br /> Press "yes" below if you understand these instructions. Press "no" if you wish to return to the document before routing.')
/
INSERT INTO PUR_VNDR_TYP_T (VNDR_TYP_CD,OBJ_ID,VER_NBR,VNDR_TYP_DESC,DOBJ_MAINT_CD_ACTV_IND,VNDR_TAX_NBR_REQ_IND,VNDR_TYP_CHG_ALLW_IND,VNDR_ADDR_TYP_REQ_CD,VNDR_CONTR_ALLW_IND,VNDR_SHOW_RVW_IND,VNDR_RVW_TXT)
  VALUES ('PO','28802CB4F25C7160E043814FD8817160',1.0,'Purchase Order','Y','Y','N','PO','Y','N','The new vendor, {0}, is about to be routed.<br /> The vendor\'s document ID is {1}.<br /> Please fax your W-9/W-8BEN documentation to 111-111-1111 and reference the Vendor document number on the form. <br /> <br /> For inquiries regarding vendor additions, changes or other vendor-related requests, please contact the workgroup at 222-222-2222 or email <a href="mailto:knoreceipt-l@indiana.edu">knoreceipt-l@indiana.edu</a>. <br /> <br /> For general questions, please contact your local purchasing office. <br /> <br /> <table class="datatable" border="2"><tr><th>Campus</th><th>Hotline</th</tr> <tr><td>Main</td><td>333-333-3333</td></tr> <tr><td>East</td><td>444-444-4444</td></tr> <tr><td>West</td><td>555-555-5555</td></tr> </table> <br /> <br /> Press "yes" below if you understand these instructions. Press "no" if you wish to return to the document before routing.')
/
INSERT INTO PUR_VNDR_TYP_T (VNDR_TYP_CD,OBJ_ID,VER_NBR,VNDR_TYP_DESC,DOBJ_MAINT_CD_ACTV_IND,VNDR_TAX_NBR_REQ_IND,VNDR_TYP_CHG_ALLW_IND,VNDR_ADDR_TYP_REQ_CD,VNDR_CONTR_ALLW_IND,VNDR_SHOW_RVW_IND)
  VALUES ('RF','472546B2AA876AEAE0404F8189D80544',2.0,'Revolving Fund','Y','N','N','RM','N','N')
/
INSERT INTO PUR_VNDR_TYP_T (VNDR_TYP_CD,OBJ_ID,VER_NBR,VNDR_TYP_DESC,DOBJ_MAINT_CD_ACTV_IND,VNDR_TAX_NBR_REQ_IND,VNDR_TYP_CHG_ALLW_IND,VNDR_ADDR_TYP_REQ_CD,VNDR_CONTR_ALLW_IND,VNDR_SHOW_RVW_IND)
  VALUES ('SP','472546B2AA886AEAE0404F8189D80544',2.0,'Participant Payment','Y','N','N','RM','N','N')
/