CREATE TABLE KYC_Profile(
	customerId INT, -- constraint Foreign Key in Customer_Table
	employeeId INT, -- constraint Foreign Key in Employee_Table
	passportNumber INT,-- constraint Foreign Key in Passport_Table
	fundSource VARCHAR(200),
	
	
	CONSTRAINT KYC_Profile_PK PRIMARY KEY (customerId, employeeId)
);