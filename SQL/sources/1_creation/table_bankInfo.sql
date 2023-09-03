CREATE TABLE Bank_Info (
	bankId INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- constraint this has to be auto generated
	routingNumber VARCHAR(20),
	bankName VARCHAR(100),
	branchName VARCHAR(100)
	
		-- constraints implemented
);