ALTER TABLE Authorised_Person
ADD CONSTRAINT Authorised_Person__FK_ACcustomer FOREIGN KEY (ACcustomerId) REFERENCES customer_info(customerID);