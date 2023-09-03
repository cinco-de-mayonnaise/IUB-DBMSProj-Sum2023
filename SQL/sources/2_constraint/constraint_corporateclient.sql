ALTER TABLE corporate_client
ADD CONSTRAINT FK_customer FOREIGN KEY (CcustomerId) REFERENCES customer_info(customerID);