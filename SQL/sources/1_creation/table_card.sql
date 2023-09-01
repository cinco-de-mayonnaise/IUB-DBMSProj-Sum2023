CREATE TABLE Card(
	cardNum INT PRIMARY KEY, -- constraint autoIncrement length more than 8
        bankId INT, -- constraint Foreign Key Bank_Table
        cvc INT NOT NULL,
        customerId INT -- constraint Foreign Key Customer_Table
);