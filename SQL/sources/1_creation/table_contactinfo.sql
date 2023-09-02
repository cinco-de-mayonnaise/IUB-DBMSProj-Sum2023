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
