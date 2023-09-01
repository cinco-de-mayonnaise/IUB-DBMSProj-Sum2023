CREATE TABLE Passport_Info(
	pCustomerId INTEGER NOT NULL,
	passportNumber CHAR(10) NOT NULL,
	issuePlace VARCHAR(100) NOT NULL,
	issueDate VARCHAR(100) NOT NULL,
	expiryDate VARCHAR(100) NOT NULL,
    
    CONSTRAINT Passport_Info_PK primary key (pCustomerId, passportNumber)
);