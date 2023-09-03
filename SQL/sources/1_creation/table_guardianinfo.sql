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