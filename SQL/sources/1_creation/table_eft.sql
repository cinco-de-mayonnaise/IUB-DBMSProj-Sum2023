CREATE TABLE EFT(
	eftId INT PRIMARY KEY,
        customerId INT, -- constraint Foreign Key Customer_Table
        date DATE,
        bankId INT -- constraint Foreign Key Bank_Table
);