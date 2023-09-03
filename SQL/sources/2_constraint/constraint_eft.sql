ALTER TABLE eft
ADD CONSTRAINT FK_customer FOREIGN KEY (customerId) REFERENCES customer_info(customerID),
	CONSTRAINT FK_bank FOREIGN KEY (bankId) REFERENCES bank_info(bankID);