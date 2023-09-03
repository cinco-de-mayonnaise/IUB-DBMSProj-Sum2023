ALTER TABLE Credit_Facility
ADD CONSTRAINT Credit_Facility__FK_customer FOREIGN KEY (customerId) REFERENCES customer_info(customerID);