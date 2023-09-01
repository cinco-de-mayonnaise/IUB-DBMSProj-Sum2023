CREATE TABLE contactInfo(
	contactID INT PRIMARY KEY,
	presentAddress VARCHAR(400) NOT NULL,
	permanentAddress VARCHAR(400),
	mobileNumber VARCHAR(20) NOT NULL,
        city VARCHAR(20),
        postcode varchar(20),
	state varchar(20),
        country varchar(20),
        fax varchar(20),
        email varchar(100),
	telephoneNumber VARCHAR(20)

);
