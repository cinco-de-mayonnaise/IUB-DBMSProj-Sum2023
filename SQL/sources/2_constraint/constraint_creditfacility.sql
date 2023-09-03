ALTER TABLE Credit_Facility
ADD CONSTRAINT FK_customer FOREIGN KEY (customerId) REFERENCES customer_info(customerID);