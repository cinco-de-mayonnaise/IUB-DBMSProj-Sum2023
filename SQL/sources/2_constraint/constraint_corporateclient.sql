ALTER TABLE corporate_client
ADD CONSTRAINT corporate_client__FK_customer FOREIGN KEY (CcustomerId) REFERENCES customer_info(customerID);