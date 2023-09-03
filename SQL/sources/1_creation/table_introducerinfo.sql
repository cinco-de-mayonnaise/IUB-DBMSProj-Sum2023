CREATE TABLE Introducer_Info(
	introducerID INT PRIMARY KEY, -- constraint, introducer must have been a customer as well
	
	-- these crap should be unnecessary because you can get introducer details from customer table if you have introducer's customerID, right?
	
	iName VARCHAR(100) NOT NULL, -- constraint, introducer must have been a customer as well
	iNumber VARCHAR(20), -- constraint, must be a mobile number with customerid.mobilenumber = introducernumber
	email VARCHAR(100), -- same constraints as above, may be null
	occupation VARCHAR(50) -- same constraints as above
	
	
	-- Not implemented as constraints not needed, ask Tabriji
);