ALTER TABLE Passport_Info
ADD CONSTRAINT Passport_Info__FK_customer FOREIGN KEY (pCustomerId) REFERENCES customer_info(customerID);