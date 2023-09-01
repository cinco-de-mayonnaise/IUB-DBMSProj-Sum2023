CREATE TABLE Customer_Info(
	contactID INT PRIMARY KEY,
	presentAddress VARCHAR(400) NOT NULL,
	permanentAddress VARCHAR(400),
	mobileNumber VARCHAR(15) NOT NULL,
	telephoneNumber VARCHAR(15),
	email VARCHAR(50)
);