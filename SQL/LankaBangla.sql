-- ----------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------------
-- -
-- - This SQL script was generated automatically using HOSTS_concatenator made by AbdullahTrees!
-- - 
-- - File created at 2023-09-03 23:14:42.496711
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
-- - 	=> constraint_administrator.sql
-- - 	=> constraint_authorised_person.sql
-- - 	=> constraint_bank_info.sql
-- - 	=> constraint_bo_account.sql
-- - 	=> constraint_bo_nomination.sql
-- - 	=> constraint_card.sql
-- - 	=> constraint_corporateclient.sql
-- - 	=> constraint_creditfacility.sql
-- - 	=> constraint_customerinfo.sql
-- - 	=> constraint_eft.sql
-- - 	=> constraint_employee.sql
-- - 	=> constraint_first_ac_holder.sql
-- - 	=> constraint_guardianinfo.sql
-- - 	=> constraint_head_of_settlement.sql
-- - 	=> constraint_joint_ac_holder.sql
-- - 	=> constraint_passportinfo.sql
-- - 	=> constraint_relationship_manager.sql
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

SET FOREIGN_KEY_CHECKS=0;


DROP TABLE IF EXISTS account,
administrator,
authorised_person,
bank_info,
bo_account,
bo_nomination,
card,
contact_info,
corporate_client,
credit_facility,
customer_info,
eft,
employee,
first_ac_holder,
guardian_info,
head_of_settlement,
introducer_info,
joint_ac_holder,
kyc_profile,
nominee,
passport_info,
poa_info,
relationship_manager;

SET FOREIGN_KEY_CHECKS=1;
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
	bankId INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- constraint this has to be auto generated
	routingNumber VARCHAR(20),
	bankName VARCHAR(100),
	branchName VARCHAR(100)
	
		-- constraints implemented
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
	
	-- constraints implemented
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
    bankId INT UNSIGNED,-- constraint->foreign key bank
    statementCycleType  varchar(25)
	
		-- constraints implemented
);
-- -----------------------------
-- -- table_bo_account.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin table_card.sql!
-- -----------------------------
CREATE TABLE Card(
	cardNum VARCHAR(20) PRIMARY KEY, -- constraint autoIncrement length more than 8 
	-- cardNum INT(8) UNSIGNED ZEROFILL AUTO_INCREMENT PRIMARY KEY, -- card number cannot be a number silly goose some bank numbers also have letters in them and are prepended by zeroes
	bankId INT UNSIGNED NOT NULL, -- constraint Foreign Key Bank_Table
	cvc INT NOT NULL,
	customerId INT NOT NULL -- constraint Foreign Key Customer_Table
	
		-- constraints implemented
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
	
	-- constraints implemented
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
	
	-- constraints implemented
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
	signature LONGBLOB NOT NULL,
	eTinID VARCHAR(50),
	customerType VARCHAR(20), -- constraint(subentity specifier): check first_acc, joint_acc, corporate_client 
	introducerID INT, -- constraint: foreign key of introducer_info
	introducerContact VARCHAR(15), -- constraint: must exist in the same introducerID (NORMALIZATION: this field shouldnt exist because you can just get it from introducerID reeeeeeeee)	
	bankID INT UNSIGNED, -- constraint: foreign key of bank_info
	bankAccNo VARCHAR(30),
	BOapplicationNo INT,
	BONapplicationNo INT,
	POAapplicationNo INT
	-- nationality VARCHAR(20)
	
	-- constraints implemented
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
	bankId INT UNSIGNED -- constraint Foreign Key Bank_Table
	
	-- constraints implemented
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
	
	-- constraints implemented
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
	
	-- constraints implemented
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
											-- NOT implemented.
	passportNumber VARCHAR(10), -- constraint: is a foreign key in passportinfo table
								-- NOT POSSIBLE because guardian is not a customer and so it cannot be inserted into the passport_info table without a customerid key.
								-- still implemented, need to test.
	contactID INT, -- constraint: is a foreign key in contact_info
	signature LONGBLOB NOT NULL
	
	-- constraints implemented
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
	
	-- constraint implemented.
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
	
	
	-- Not implemented as constraints not needed, ask Tabriji
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
	
	-- constraint implemented
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
	-- constraints implemented
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
-- -- Begin constraint_administrator.sql!
-- -----------------------------
ALTER TABLE administrator
ADD CONSTRAINT administrator__FK_Aemployee FOREIGN KEY (AemployeeId) REFERENCES employee(employeeID);
-- -----------------------------
-- -- constraint_administrator.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin constraint_authorised_person.sql!
-- -----------------------------
ALTER TABLE Authorised_Person
ADD CONSTRAINT Authorised_Person__FK_ACcustomer FOREIGN KEY (ACcustomerId) REFERENCES customer_info(customerID);
-- -----------------------------
-- -- constraint_authorised_person.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin constraint_bank_info.sql!
-- -----------------------------
-- ALTER TABLE bank_info
-- ADD CONSTRAINT Auto_gen_id (bankId) UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE ;
-- -----------------------------
-- -- constraint_bank_info.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin constraint_bo_account.sql!
-- -----------------------------
ALTER TABLE bo_account
ADD CONSTRAINT bo_account__FK_customer FOREIGN KEY (customerId) REFERENCES customer_info(customerID),
ADD CONSTRAINT bo_account__FK_bank FOREIGN KEY (bankId) REFERENCES bank_info(bankID);
-- -----------------------------
-- -- constraint_bo_account.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin constraint_bo_nomination.sql!
-- -----------------------------
ALTER TABLE bo_nomination
ADD CONSTRAINT bo_nomination__FK_guardian FOREIGN KEY (guardianId) REFERENCES guardian_info(guardianID),
ADD CONSTRAINT bo_nomination__FK_nominee FOREIGN KEY (nomineeId) REFERENCES nominee(nomineeId);
-- -----------------------------
-- -- constraint_bo_nomination.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin constraint_card.sql!
-- -----------------------------
ALTER TABLE card
ADD CONSTRAINT card__FK_customer FOREIGN KEY (customerId) REFERENCES customer_info(customerID),
ADD CONSTRAINT card__FK_bank FOREIGN KEY (bankId) REFERENCES bank_info(bankID);
-- -----------------------------
-- -- constraint_card.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin constraint_corporateclient.sql!
-- -----------------------------
ALTER TABLE corporate_client
ADD CONSTRAINT corporate_client__FK_customer FOREIGN KEY (CcustomerId) REFERENCES customer_info(customerID);
-- -----------------------------
-- -- constraint_corporateclient.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin constraint_creditfacility.sql!
-- -----------------------------
ALTER TABLE Credit_Facility
ADD CONSTRAINT Credit_Facility__FK_customer FOREIGN KEY (customerId) REFERENCES customer_info(customerID);
-- -----------------------------
-- -- constraint_creditfacility.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin constraint_customerinfo.sql!
-- -----------------------------
ALTER TABLE customer_info
ADD CONSTRAINT customer_info__FK_Customer_Info FOREIGN KEY (contactID) REFERENCES contact_info(contactID),
ADD CONSTRAINT customer_info__Chk_gender CHECK (gender IN ("Male", "Female", "Other")),
ADD CONSTRAINT customer_info__Chk_customerType CHECK (customerType IN ("first_acc", "joint_acc", "corporate_client")),
ADD CONSTRAINT customer_info__FK_introducer FOREIGN KEY (introducerID) REFERENCES introducer_info(introducerID),
ADD CONSTRAINT customer_info__FK_bank FOREIGN KEY (bankID) REFERENCES bank_info(bankID)
;
-- -----------------------------
-- -- constraint_customerinfo.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin constraint_eft.sql!
-- -----------------------------
ALTER TABLE eft
ADD CONSTRAINT eft__FK_customer FOREIGN KEY (customerId) REFERENCES customer_info(customerID),
ADD CONSTRAINT eft__FK_bank FOREIGN KEY (bankId) REFERENCES bank_info(bankID);
-- -----------------------------
-- -- constraint_eft.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin constraint_employee.sql!
-- -----------------------------
ALTER TABLE employee
ADD CONSTRAINT employee__Chk_gender CHECK (gender IN ("Male", "Female", "Other")),
ADD CONSTRAINT employee__Chk_employeeType CHECK (employeeType IN ("RelMan", "Head_Of_Set.", "Admin")),
ADD CONSTRAINT employee__FK_contact FOREIGN KEY (contactId) REFERENCES contact_info(contactID);
-- -----------------------------
-- -- constraint_employee.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin constraint_first_ac_holder.sql!
-- -----------------------------
ALTER TABLE First_AC_Holder
ADD CONSTRAINT First_AC_Holder__FK_customer FOREIGN KEY (FcustomerId) REFERENCES customer_info(customerID);
-- -----------------------------
-- -- constraint_first_ac_holder.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin constraint_guardianinfo.sql!
-- -----------------------------
ALTER TABLE guardian_info
 -- ADD CONSTRAINT Chk_relation_minor CHECK (relationshipWithMinor IN ("Father", "Mother", "Sister")), -- not necessary
 -- ADD CONSTRAINT guardian_info__FK_passport FOREIGN KEY (passportNumber) REFERENCES Passport_Info(passportNumber),
ADD CONSTRAINT guardian_info__FK_contact FOREIGN KEY (contactId) REFERENCES contact_info(contactID);
-- -----------------------------
-- -- constraint_guardianinfo.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin constraint_head_of_settlement.sql!
-- -----------------------------
ALTER TABLE Head_of_Settlement
ADD CONSTRAINT Head_of_Settlement__FK_HoSemployee FOREIGN KEY (HoSemployeeId) REFERENCES employee(employeeID);
-- -----------------------------
-- -- constraint_head_of_settlement.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin constraint_joint_ac_holder.sql!
-- -----------------------------
ALTER TABLE Joint_AC_Holder
ADD CONSTRAINT Joint_AC_Holder__FK_Jcustomer FOREIGN KEY (JcustomerId) REFERENCES customer_info(customerID);
-- -----------------------------
-- -- constraint_joint_ac_holder.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin constraint_passportinfo.sql!
-- -----------------------------
ALTER TABLE Passport_Info
ADD CONSTRAINT Passport_Info__FK_customer FOREIGN KEY (pCustomerId) REFERENCES customer_info(customerID);
-- -----------------------------
-- -- constraint_passportinfo.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin constraint_relationship_manager.sql!
-- -----------------------------
ALTER TABLE relationship_manager
ADD CONSTRAINT relationship_manager__FK_RMemployee FOREIGN KEY (RMemployeeID) REFERENCES employee(employeeID);
-- -----------------------------
-- -- constraint_relationship_manager.sql ended here!
-- ----------------------------------


-- ----------------------------------
-- -- Begin postamble.sql!
-- -----------------------------
COMMIT;
-- -----------------------------
-- -- postamble.sql ended here!
-- ----------------------------------

