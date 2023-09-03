CREATE TABLE Card(
	cardNum VARCHAR(20) PRIMARY KEY, -- constraint autoIncrement length more than 8 
	-- cardNum INT(8) UNSIGNED ZEROFILL AUTO_INCREMENT PRIMARY KEY, -- card number cannot be a number silly goose some bank numbers also have letters in them and are prepended by zeroes
	bankId INT UNSIGNED NOT NULL, -- constraint Foreign Key Bank_Table
	cvc INT NOT NULL,
	customerId INT NOT NULL -- constraint Foreign Key Customer_Table
	
		-- constraints implemented
);