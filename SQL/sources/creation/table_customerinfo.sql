CREATE TABLE Customer_Info(
	customerID INT PRIMARY KEY,
	customerName VARCHAR(100) NOT NULL,
	fatherName VARCHAR(100),
	motherName VARCHAR(100),
	husbandName VARCHAR(100),
	dob DATE NOT NULL,
	gender VARCHAR(10) -- constraint: check, male, female, OTHERS
	nationality VARCHAR(20),
	presentAddress VARCHAR(400) NOT NULL,
	permanentAddress VARCHAR(400),
	mobileNumber VARCHAR(15) NOT NULL,
	telephoneNumber VARCHAR(15),
	email VARCHAR(50),
	occupation VARCHAR(50),
	drivingLicenseNo VARCHAR(30),
	signature VARBINARY(2097152) NOT NULL,
	eTinID VARCHAR(50),
	
	
);