ALTER TABLE customer_info
ADD CONSTRAINT FK_Customer_Info FOREIGN KEY (contactID) REFERENCES contact_info(contactID);