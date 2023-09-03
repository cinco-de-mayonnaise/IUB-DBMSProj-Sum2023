ALTER TABLE Passport_Info
ADD CONSTRAINT FK_customer FOREIGN KEY (customerId) REFERENCES customer_info(customerID);