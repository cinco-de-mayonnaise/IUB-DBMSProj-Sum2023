------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
---
--- This SQL script was generated automatically using HOSTS_concatenator made by AbdullahTrees!
--- 
--- File created at 2023-08-31 22:43:24.986137
--- 
--- Built using the following source files:
--- 	=> boFormSql.txt
--- 	=> CAI_sql.txt
--- 	=> lbangla-sql-query-from-kyc-database.txt
--- 	=> user-sql-query-from-kyc-database.txt
--- 
------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------



------------------------------------
---- Begin boFormSql.txt!
-------------------------------
Table 1:

CREATE TABLE bo_form1 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    app_id VARCHAR(255),
    date VARCHAR(255),
    category VARCHAR(255),
    type VARCHAR(255),
    CDBL_id VARCHAR(255),
    BO_id VARCHAR(255),
    acc_open_date VARCHAR(255),
    full_name VARCHAR(255),
    short_name VARCHAR(255),
    title VARCHAR(255),
    cp_name VARCHAR(255),
    gender VARCHAR(255),
    occupation VARCHAR(255),
    f_name VARCHAR(255),
    m_name VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    post_code VARCHAR(255),
    state VARCHAR(255),
    country VARCHAR(255),
    telephone VARCHAR(255),
    phone VARCHAR(255),
    fax VARCHAR(255),
    email VARCHAR(255),
    passportNo VARCHAR(255),
    issuePlace VARCHAR(255),
    issueDate VARCHAR(255),
    expiryDate VARCHAR(255),
    bankName VARCHAR(255),
    branchName VARCHAR(255),
    accountNo VARCHAR(255),
    routingNo VARCHAR(255),
    edcType VARCHAR(255),
    taxExemption VARCHAR(255),
    taxId VARCHAR(255),
    residency VARCHAR(255),
    nationality VARCHAR(255),
    dob VARCHAR(255),
    sccType VARCHAR(255),
    refNo VARCHAR(255),
    dor VARCHAR(255),
    caseCompany VARCHAR(255),
    regNo VARCHAR(255)
);


Table 2


CREATE TABLE bo_form2 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    j_full_name VARCHAR(255),
    j_short_name VARCHAR(255),
    j_titles VARCHAR(255),
    depository VARCHAR(255),
    d_bo_code VARCHAR(255),
    exchange_type VARCHAR(255),
    t_id VARCHAR(255),
    delivery_type VARCHAR(255),
    operate_by VARCHAR(255),
    first_applicant_name VARCHAR(255),
    first_applicant_date VARCHAR(255),
    second_applicant_name VARCHAR(255),
    second_applicant_date VARCHAR(255),
    third_signatory_name VARCHAR(255),
    third_signatory_date VARCHAR(255),
    joint_account_type VARCHAR(255),
    account_operated_by VARCHAR(255),
    introducer_name VARCHAR(255),
    account_id VARCHAR(255)
);
-------------------------------
---- boFormSql.txt ended here!
------------------------------------


------------------------------------
---- Begin CAI_sql.txt!
-------------------------------
CREATE TABLE `cai_db`.`acctable` (`clientCode` INT(30) NULL , `linkCode` INT(30) NOT NULL , `date` DATE NOT NULL , `fAccountName` VARCHAR(30) NOT NULL , `fAccountFHName` VARCHAR(30) NOT NULL , `fAccountMName` VARCHAR(30) NOT NULL , `fDob` DATE NOT NULL , `fNationality` VARCHAR(30) NOT NULL , `fPreAddress` VARCHAR(30) NOT NULL , `fPreMobile` INT(15) NOT NULL , `fPreTel` INT(15) NOT NULL , `fPerAddress` VARCHAR(30) NOT NULL , `fPerTel` INT(15) NOT NULL , `fPerEmail` VARCHAR(30) NOT NULL , `fOccupation` VARCHAR(30) NOT NULL , `fE-Tin` VARCHAR(30) NOT NULL , PRIMARY KEY (`clientCode`)) ENGINE = InnoDB;


ALTER TABLE acctable
ADD COLUMN accType INT(10);


CREATE TABLE `acctable` (
  `clientCode` int(30) NOT NULL,
  `linkCode` int(30) NOT NULL,
  `date` date NOT NULL,
  `fAccountName` varchar(30) NOT NULL,
  `fAccountFHName` varchar(30) NOT NULL,
  `fAccountMName` varchar(30) NOT NULL,
  `fDob` date NOT NULL,
  `fNationality` varchar(30) NOT NULL,
  `fPreAddress` varchar(30) NOT NULL,
  `fPreMobile` int(15) NOT NULL,
  `fPreTel` int(15) NOT NULL,
  `fPerAddress` varchar(30) NOT NULL,
  `fPerTel` int(15) NOT NULL,
  `fPerEmail` varchar(30) NOT NULL,
  `fOccupation` varchar(30) NOT NULL,
  `fETin` varchar(30) NOT NULL,
  `accType` int(10) NOT NULL,
  PRIMARY KEY (`clientCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
-------------------------------
---- CAI_sql.txt ended here!
------------------------------------


------------------------------------
---- Begin lbangla-sql-query-from-kyc-database.txt!
-------------------------------
CREATE TABLE `kyc` (
  `BO_ID` int(20) NOT NULL,
  `Internal_Ref_No` int(20) NOT NULL,
  `Customer_Account_Name` varchar(30) NOT NULL,
  `Account_Type` varchar(20) NOT NULL,
  `Relationship_Manager_Name` varchar(30) NOT NULL,
  `Fund_Source` varchar(30) NOT NULL,
  `BO_Info` varchar(50) NOT NULL,
  `Passport_No` int(20) NOT NULL,
  `PO_for_Passport` enum('yes','no') NOT NULL,
  `Voter_ID` int(20) NOT NULL,
  `PO_for_Voter_ID` enum('yes','no') NOT NULL,
  `NID` int(20) NOT NULL,
  `PO_for_NID` enum('yes','no') NOT NULL,
  `TIN_No` int(20) NOT NULL,
  `PO_for_TIN` enum('yes','no') NOT NULL,
  `VAT_Reg_No` int(20) NOT NULL,
  `PO_for_VAT_Reg` enum('yes','no') NOT NULL,
  `Driving_License_No` int(20) NOT NULL,
  `PO_for_DL_no` enum('yes','no') NOT NULL,
  `Occupation` varchar(20) NOT NULL,
  `comments` varchar(100) NOT NULL,
  `signatures` longblob NOT NULL,
  `RM_signature` longblob NOT NULL,
  `Name_of_RM` varchar(30) NOT NULL,
  `Date` date NOT NULL,
  `signature_of_verifier` longblob NOT NULL,
  `verified_by` varchar(30) NOT NULL,
  `Date_of_verification` date NOT NULL,
  `Signature_of_approver` longblob NOT NULL,
  `Approved_by` varchar(30) NOT NULL,
  `Approved_Date` date NOT NULL,
  PRIMARY KEY (`BO_ID`)
)
-------------------------------
---- lbangla-sql-query-from-kyc-database.txt ended here!
------------------------------------


------------------------------------
---- Begin user-sql-query-from-kyc-database.txt!
-------------------------------
CREATE TABLE `user` (
  `Branch` varchar(20) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Email_Address` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `Postal_Code` int(4) NOT NULL,
  `About` varchar(50) NOT NULL,
  PRIMARY KEY (`Email_Address`)
)
-------------------------------
---- user-sql-query-from-kyc-database.txt ended here!
------------------------------------

