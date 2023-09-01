CREATE TABLE Kyc_Profile(
	customerId INT, -- constraint Foreign Key Customer_Table
        employeeId INT, -- constraint Foreign Key Employee_Table
        passportNumber INT,-- constraint Foreign Key Passport_Table
        fundSource VARCHAR(200),
        CONSTRAINT Kyc_Profile_PK primary key (customerId, employeeId)
);