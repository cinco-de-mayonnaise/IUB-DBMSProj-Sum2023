CREATE TABLE Passport_Info(
	pCustomerId INTEGER NOT NULL,  -- constraint, 2 primary keys, and also foreign key in customer(customerid)
	passportNumber VARCHAR(10) NOT NULL,
	issuePlace VARCHAR(100) NOT NULL,
	issueDate VARCHAR(100) NOT NULL,
	expiryDate VARCHAR(100) NOT NULL,
    
    -- CONSTRAINT Passport_Info_PK PRIMARY KEY (pCustomerId, passportNumber)
);