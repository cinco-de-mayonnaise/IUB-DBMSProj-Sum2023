ALTER TABLE bo_account
ADD CONSTRAINT bo_account__FK_customer FOREIGN KEY (customerId) REFERENCES customer_info(customerID),
ADD CONSTRAINT bo_account__FK_bank FOREIGN KEY (bankId) REFERENCES bank_info(bankID);