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
	POAapplicationNo INT,
	-- nationality VARCHAR(20),
	
	
	
);