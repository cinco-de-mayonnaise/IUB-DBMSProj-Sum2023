ALTER TABLE administrator
ADD CONSTRAINT FK_ACcustomer FOREIGN KEY (ACcustomerId) REFERENCES customer_info(customerID);