ALTER TABLE eft
ADD CONSTRAINT eft__FK_customer FOREIGN KEY (customerId) REFERENCES customer_info(customerID),
ADD CONSTRAINT eft__FK_bank FOREIGN KEY (bankId) REFERENCES bank_info(bankID);