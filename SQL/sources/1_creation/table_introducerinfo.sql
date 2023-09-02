CREATE TABLE Introducer_Info(
	introducerID INT PRIMARY KEY, -- constraint, introducer must have been a customer as well
	iName VARCHAR(100) NOT NULL, -- constraint, introducer must have been a customer as well
	iNumber VARCHAR(20), -- constraint, must be a mobile number with customerid.mobilenumber = introducernumber
	email VARCHAR(100), -- same constraints as above, may be null
	occupation VARCHAR(50), -- same constraints as above
);