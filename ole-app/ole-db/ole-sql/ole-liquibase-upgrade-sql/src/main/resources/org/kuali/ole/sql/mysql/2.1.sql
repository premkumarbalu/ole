--  *********************************************************************
--  Update Database Script
--  *********************************************************************
--  Change Log: org/kuali/ole/2.1/db.changelog-20151123.xml
--  *********************************************************************

--  Lock Database
--  Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_KRCR_PARM_T::ole
UPDATE KRCR_PARM_T SET VAL = 'PO + 0 $' WHERE PARM_NM = 'REENCUMBER_RECURRING_ORDERS'
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_KRCR_PARM_T', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', NOW(), 1, '7:4b8bac07b079429600f713e4b495a922', 'update', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_DS_ITEM_T_ADD::ole
ALTER TABLE OLE_DS_ITEM_T ADD DESC_OF_PIECES VARCHAR(400) NULL
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DS_ITEM_T_ADD', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', NOW(), 2, '7:9195e2f46e6a719bf93100823a3f6e31', 'addColumn', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::ITEM_AUDIT_T::ole
CREATE TABLE ITEM_AUDIT_T (AUDIT_ID INT(10) NOT NULL, FOREIGN_KEY_REF INT(40) NULL, ACTOR VARCHAR(40) NULL, UPDATE_DATE TIMESTAMP NULL, COLUMN_UPDATED VARCHAR(40) NULL, COLUMN_VALUE BLOB NULL, OBJ_ID VARCHAR(36) NULL, VER_NBR DECIMAL(8) NULL, CONSTRAINT PK_ITEM_AUDIT_T PRIMARY KEY (AUDIT_ID))
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('ITEM_AUDIT_T', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', NOW(), 3, '7:c6426909901d1d50e0f7f4476e615658', 'createTable', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::ITEM_AUDIT_S::ole
CREATE TABLE ITEM_AUDIT_S (ID BIGINT(19) NOT NULL, CONSTRAINT PK_ITEM_AUDIT_S PRIMARY KEY (ID))
/

ALTER TABLE ITEM_AUDIT_S MODIFY ID BIGINT(19) AUTO_INCREMENT
/

ALTER TABLE ITEM_AUDIT_S AUTO_INCREMENT=1
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('ITEM_AUDIT_S', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', NOW(), 4, '7:9bcdc626e01c62324d3215a7ff3188af', 'createTable, addAutoIncrement', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::BIB_AUDIT_T::ole
CREATE TABLE BIB_AUDIT_T (AUDIT_ID INT(10) NOT NULL, FOREIGN_KEY_REF INT(40) NULL, ACTOR VARCHAR(40) NULL, UPDATE_DATE TIMESTAMP NULL, COLUMN_UPDATED VARCHAR(40) NULL, COLUMN_VALUE BLOB NULL, OBJ_ID VARCHAR(36) NULL, VER_NBR DECIMAL(8) NULL, CONSTRAINT PK_BIB_AUDIT_T PRIMARY KEY (AUDIT_ID))
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('BIB_AUDIT_T', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', NOW(), 5, '7:1f3e9c6b844c26d85a4bf5577e4e7efa', 'createTable', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::BIB_AUDIT_S::ole
CREATE TABLE BIB_AUDIT_S (ID BIGINT(19) NOT NULL, CONSTRAINT PK_BIB_AUDIT_S PRIMARY KEY (ID))
/

ALTER TABLE BIB_AUDIT_S MODIFY ID BIGINT(19) AUTO_INCREMENT
/

ALTER TABLE BIB_AUDIT_S AUTO_INCREMENT=1
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('BIB_AUDIT_S', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', NOW(), 6, '7:f05c53d8c16e2e14f32fa0ceb3e6a522', 'createTable, addAutoIncrement', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::HOLDINGS_AUDIT_T::ole
CREATE TABLE HOLDINGS_AUDIT_T (AUDIT_ID INT(10) NOT NULL, FOREIGN_KEY_REF INT(40) NULL, ACTOR VARCHAR(40) NULL, UPDATE_DATE TIMESTAMP NULL, COLUMN_UPDATED VARCHAR(40) NULL, COLUMN_VALUE BLOB NULL, OBJ_ID VARCHAR(36) NULL, VER_NBR DECIMAL(8) NULL, CONSTRAINT PK_HOLDINGS_AUDIT_T PRIMARY KEY (AUDIT_ID))
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('HOLDINGS_AUDIT_T', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', NOW(), 7, '7:458ea09629d0eb2d0ffe8b80da20c278', 'createTable', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::HOLDINGS_AUDIT_S::ole
CREATE TABLE HOLDINGS_AUDIT_S (ID BIGINT(19) NOT NULL, CONSTRAINT PK_HOLDINGS_AUDIT_S PRIMARY KEY (ID))
/

ALTER TABLE HOLDINGS_AUDIT_S MODIFY ID BIGINT(19) AUTO_INCREMENT
/

ALTER TABLE HOLDINGS_AUDIT_S AUTO_INCREMENT=1
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('HOLDINGS_AUDIT_S', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', NOW(), 8, '7:2e0e5c4d5c6511f403f1f7b82f239462', 'createTable, addAutoIncrement', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_BAT_PRCS_PRFLE_CNST_T_ATT_VAL_MYSQL::ole
ALTER TABLE OLE_BAT_PRCS_PRFLE_CNST_T MODIFY ATT_VAL varchar(500)
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_BAT_PRCS_PRFLE_CNST_T_ATT_VAL_MYSQL', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', NOW(), 9, '7:1493697f04debf4577b4234340847e0a', 'sql', '', 'EXECUTED', '3.2.0')
/

--  Changeset org/kuali/ole/2.1/db.changelog-20151123.xml::OLE_DS_HOLDINGS_T_ADD_CANCELLATION_CANDIDATE::ole
ALTER TABLE OLE_DS_HOLDINGS_T ADD CANCELLATION_CANDIDATE VARCHAR(1) NULL
/

INSERT INTO DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, LIQUIBASE) VALUES ('OLE_DS_HOLDINGS_T_ADD_CANCELLATION_CANDIDATE', 'ole', 'org/kuali/ole/2.1/db.changelog-20151123.xml', NOW(), 10, '7:4b90e5806ac95759cf11f01c40bf74bb', 'addColumn', '', 'EXECUTED', '3.2.0')
/

--  Release Database Lock
--  Release Database Lock
