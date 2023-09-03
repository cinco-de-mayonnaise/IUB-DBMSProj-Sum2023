ALTER TABLE card
ADD CONSTRAINT card__FK_customer FOREIGN KEY (customerId) REFERENCES customer_info(customerID),
ADD CONSTRAINT card__FK_bank FOREIGN KEY (bankId) REFERENCES bank_info(bankID);