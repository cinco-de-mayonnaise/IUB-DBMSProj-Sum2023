-- ----------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------------
-- -
-- - This SQL script was generated automatically using HOSTS_concatenator made by AbdullahTrees!
-- - 
-- - File created at 2023-09-03 02:43:16.108738
-- - 
-- - Built using the following source files:
-- - 	=> preamble.sql
-- - 	=> table_account.sql
-- - 	=> table_administrator.sql
-- - 	=> table_authorized_person.sql
-- - 	=> table_bankInfo.sql
-- - 	=> table_boNomination.sql
-- - 	=> table_bo_account.sql
-- - 	=> table_card.sql
-- - 	=> table_contactinfo.sql
-- - 	=> table_corporate_client.sql
-- - 	=> table_credit_facility.sql
-- - 	=> table_customerinfo.sql
-- - 	=> table_eft.sql
-- - 	=> table_employee.sql
-- - 	=> table_first_ac_holder.sql
-- - 	=> table_guardianinfo.sql
-- - 	=> table_head_of_settlement.sql
-- - 	=> table_introducerinfo.sql
-- - 	=> table_joint_ac_holder.sql
-- - 	=> table_kyc_profile.sql
-- - 	=> table_nominee.sql
-- - 	=> table_passportinfo.sql
-- - 	=> table_poaInfo.sql
-- - 	=> table_relationship_manager.sql
-- - 	=> constraint_customerinfo.sql
-- - 	=> postamble.sql
-- - 
-- ----------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------------



-- ----------------------------------
-- -- Begin preamble.sql!
-- -----------------------------
-- 
-- LankaBangla Database Script by Team BackendBackBone (Abdullah, Ishtiaq, Joy, Tabriji, Mehedi, Salma)
--
--

START TRANSACTION;

-- Drop existing tables for readdition
-- DROP TABLE IF EXISTS Relationship_Manager, Poa_Info, Passport_Info, Nominee, KYC_Profile, Joint_AC_Holder, Introducer_Info, ... -- wait we dont have to write this by hand lmao
-- -----------------------------
-- -- preamble.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_account.sql!
-- -----------------------------
CREATE TABLE Account(
    applicationNO int primary key,
    accOpeningDate date,
    cdblParticipantId int,
    boId int,
    nameOfAc varchar(30),
    title varchar(30),
    accountType varchar(20)
);
-- -----------------------------
-- -- table_account.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_administrator.sql!
-- -----------------------------
CREATE TABLE administrator(
	AemployeeId INT PRIMARY KEY -- constraint Foreign Key Employee_Table

);
-- -----------------------------
-- -- table_administrator.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_authorized_person.sql!
-- -----------------------------
CREATE TABLE Authorised_Person(
    authoPerId int primary key,
    isShareHolderOfStock boolean,
    signature LONGBLOB,
    ACcustomerId int  -- constraint foreign key ->customer
    
);
-- -----------------------------
-- -- table_authorized_person.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_bankInfo.sql!
-- -----------------------------
CREATE TABLE Bank_Info (
	bankId INTEGER PRIMARY KEY, -- constraint this has to be auto generated
	routingNumber VARCHAR(20),
	bankName VARCHAR(100),
	branchName VARCHAR(100)
);
-- -----------------------------
-- -- table_bankInfo.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_boNomination.sql!
-- -----------------------------
CREATE TABLE BO_Nomination(
	BONapplicationNo INT,
	guardianId INT, -- constraint guardian 
	nomineeId INT -- constraint ->nominee
);
-- -----------------------------
-- -- table_boNomination.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_bo_account.sql!
-- -----------------------------
create table BO_Account(
    
    BOapplicationNo int PRIMARY KEY,
    boCategory varchar(20),
    boType varchar(20),
    accOpeningDate date,
    customerId int ,-- constraint ->foreign key customer
    bankId int ,-- constraint->foreign key bank
    statementCycleType  varchar(25)
);
-- -----------------------------
-- -- table_bo_account.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_card.sql!
-- -----------------------------
CREATE TABLE Card(
	cardNum INT PRIMARY KEY, -- constraint autoIncrement length more than 8
	bankId INT, -- constraint Foreign Key Bank_Table
	cvc INT NOT NULL,
	customerId INT -- constraint Foreign Key Customer_Table
);
-- -----------------------------
-- -- table_card.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_contactinfo.sql!
-- -----------------------------
CREATE TABLE contact_Info(
	contactID INT PRIMARY KEY,
	presentAddress VARCHAR(400) NOT NULL,
	permanentAddress VARCHAR(400),
	mobileNumber VARCHAR(20) NOT NULL,
	city VARCHAR(20),
	postcode VARCHAR(20),
	state VARCHAR(20),
	country VARCHAR(20),
	fax VARCHAR(20),
	email VARCHAR(100),
	telephoneNumber VARCHAR(20)

);
-- -----------------------------
-- -- table_contactinfo.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_corporate_client.sql!
-- -----------------------------
CREATE TABLE Corporate_Client(
	CcustomerId INT PRIMARY KEY, -- constraint Foreign Key in Customer_Table
	companyName VARCHAR(200)
);
-- -----------------------------
-- -- table_corporate_client.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_credit_facility.sql!
-- -----------------------------
CREATE TABLE Credit_Facility(
	creNum VARCHAR(20),
	name VARCHAR(100),
	recommendedBy VARCHAR(100),
	approvedBy VARCHAR(100),
	customerID INT  -- constraint foreign key -> customer
);
-- -----------------------------
-- -- table_credit_facility.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_customerinfo.sql!
-- -----------------------------
CREATE TABLE Customer_Info(
	customerID INT PRIMARY KEY,
	customerName VARCHAR(100) NOT NULL,
	fatherName VARCHAR(100),
	motherName VARCHAR(100),
	husbandName VARCHAR(100),
	dob DATE NOT NULL,
	gender VARCHAR(10), -- constraint: check, male, female, OTHERS
	contactID INT, -- constraint: foreign key of contact_info
	occupation VARCHAR(50),
	drivingLicenseNo VARCHAR(30),
	signature VARBINARY(2097152) NOT NULL,
	eTinID VARCHAR(50),
	customerType VARCHAR(20), -- constraint(subentity specifier): check first_acc, joint_acc, corporate_client 
	introducerID INT, -- constraint: foreign key of introducer_info
	introducerContact VARCHAR(15), -- constraint: must exist in the same introducerID (NORMALIZATION: this field shouldnt exist because you can just get it from introducerID reeeeeeeee)	
	bankID INT, -- constraint: foreign key of bank_info
	bankAccNo VARCHAR(30),
	BOapplicationNo INT,
	BONapplicationNo INT,
	POAapplicationNo INT
	-- nationality VARCHAR(20),
);
-- -----------------------------
-- -- table_customerinfo.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_eft.sql!
-- -----------------------------
CREATE TABLE EFT(
	eftId INT PRIMARY KEY,
	customerId INT, -- constraint Foreign Key Customer_Table
	eftDate DATE,
	bankId INT -- constraint Foreign Key Bank_Table
);
-- -----------------------------
-- -- table_eft.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_employee.sql!
-- -----------------------------
CREATE TABLE Employee(
	employeeId INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	gender VARCHAR(10), -- constraint: check 'male', 'female', 'others'
	dob DATE,
	email VARCHAR(100),
	contactId INT, -- constraint Foreign Key Contact_Info Table
	signature LONGBLOB,
	employeeType VARCHAR(100) -- constraint: check 'RM', 'Hos', 'A'
);
-- -----------------------------
-- -- table_employee.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_first_ac_holder.sql!
-- -----------------------------
CREATE TABLE First_AC_Holder(
	FcustomerId INT, -- constraint Foreign Key in Customer_Table
	boId INT,
	
    CONSTRAINT First_AC_Holder_PK PRIMARY KEY (FcustomerId, boId)
);
-- -----------------------------
-- -- table_first_ac_holder.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_guardianinfo.sql!
-- -----------------------------
CREATE TABLE Guardian_Info(
	guardianID INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	shortName VARCHAR(50),
	dob DATE NOT NULL,
	relationshipWithMinor VARCHAR(20), -- maybe constraint: could be some strings like 'mother', 'father' or free.
	passportInfoId VARCHAR(20), -- constraint: is a foreign key in passportinfo table
	residencyID VARCHAR(20), -- constraint: is a foreign key somewhere (according to ERD) WHERE???
	signature LONGBLOB NOT NULL
);
-- -----------------------------
-- -- table_guardianinfo.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_head_of_settlement.sql!
-- -----------------------------
CREATE TABLE Head_of_Settlement(
	HoSemployeeId INT PRIMARY KEY, -- constraint Foreign Key Employee_Table
	finalApprovalStatus VARCHAR(300),
	finalApprovalDate DATE
);
-- -----------------------------
-- -- table_head_of_settlement.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_introducerinfo.sql!
-- -----------------------------
CREATE TABLE Introducer_Info(
	introducerID INT PRIMARY KEY, -- constraint, introducer must have been a customer as well
	
	-- these crap should be unnecessary because you can get introducer details from customer table if you have introducer's customerID, right?
	
	iName VARCHAR(100) NOT NULL, -- constraint, introducer must have been a customer as well
	iNumber VARCHAR(20), -- constraint, must be a mobile number with customerid.mobilenumber = introducernumber
	email VARCHAR(100), -- same constraints as above, may be null
	occupation VARCHAR(50) -- same constraints as above
);
-- -----------------------------
-- -- table_introducerinfo.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_joint_ac_holder.sql!
-- -----------------------------
CREATE TABLE Joint_AC_Holder(
	JcustomerId INT, -- constraint Foreign Key in Customer_Table
	boId INT,
	
	CONSTRAINT Joint_AC_Holder_PK PRIMARY KEY (JcustomerId, boId)
);
-- -----------------------------
-- -- table_joint_ac_holder.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_kyc_profile.sql!
-- -----------------------------
CREATE TABLE KYC_Profile(
	customerId INT, -- constraint Foreign Key in Customer_Table
	employeeId INT, -- constraint Foreign Key in Employee_Table
	passportNumber INT,-- constraint Foreign Key in Passport_Table
	fundSource VARCHAR(200),
	
	
	CONSTRAINT KYC_Profile_PK PRIMARY KEY (customerId, employeeId)
);
-- -----------------------------
-- -- table_kyc_profile.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_nominee.sql!
-- -----------------------------
CREATE TABLE Nominee(
    nomineeId int PRIMARY KEY,
    percentage float,
    relationshipWcus varchar(50),
    name varchar(100),
    shortName varchar(50),
    signature LONGBLOB,
    title varchar(50),
    contactId int,  -- constraint ->foreign key references contactInfo
    residencyType varchar(20), -- constraint: check, can be of only 2 types 'resident' and 'non resident'
    passportNumber varchar(20),  -- constraint: foreign key references passportInfo 
    isMinor boolean,
    dateOfBirth date,
    maturityDate date,
    customerId int,  -- constraint --> foreign key references customer
    guardianId int  -- constraint -> foreign key references guardianId
    
);
-- -----------------------------
-- -- table_nominee.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_passportinfo.sql!
-- -----------------------------
CREATE TABLE Passport_Info(
	pCustomerId INTEGER NOT NULL,  -- constraint, 2 primary keys, and also foreign key in customer(customerid)
	passportNumber VARCHAR(10) NOT NULL,
	issuePlace VARCHAR(100) NOT NULL,
	issueDate VARCHAR(100) NOT NULL,
	expiryDate VARCHAR(100) NOT NULL,
    
    CONSTRAINT Passport_Info_PK PRIMARY KEY (pCustomerId, passportNumber)
);
-- -----------------------------
-- -- table_passportinfo.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_poaInfo.sql!
-- -----------------------------
CREATE TABLE POA_Info(
	poApplicationNum INTEGER PRIMARY KEY,
	poaTitles VARCHAR(20),
	poaName VARCHAR(100)
);
-- -----------------------------
-- -- table_poaInfo.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_relationship_manager.sql!
-- -----------------------------
CREATE TABLE Relationship_Manager(
	RMemployeeID INT PRIMARY KEY, -- constraint Foreign Key Employee_Table
	verificationCode INT(4) UNSIGNED, -- constraint: check must be 4 digits
	verificationDate DATE
);
-- -----------------------------
-- -- table_relationship_manager.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin constraint_customerinfo.sql!
-- -----------------------------
ALTER TABLE customer_info
ADD CONSTRAINT FK_Customer_Info FOREIGN KEY (contactID) REFERENCES contact_info(contactID);
-- -----------------------------
-- -- constraint_customerinfo.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin postamble.sql!
-- -----------------------------
COMMIT;
-- -----------------------------
-- -- postamble.sql ended here!
-- ----------------------------------

