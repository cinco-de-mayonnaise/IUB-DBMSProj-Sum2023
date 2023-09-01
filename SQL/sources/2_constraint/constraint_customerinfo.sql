ALTER TABLE Customer_Info
ADD CONSTRAINT FK_Customer_Info FOREIGN KEY (contactID) REFERENCES Contact_Info(contactID);