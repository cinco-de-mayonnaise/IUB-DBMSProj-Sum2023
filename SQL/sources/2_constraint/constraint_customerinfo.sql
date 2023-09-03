ALTER TABLE customer_info
ADD CONSTRAINT customer_info__FK_Customer_Info FOREIGN KEY (contactID) REFERENCES contact_info(contactID),
ADD CONSTRAINT customer_info__Chk_gender CHECK (gender IN ("Male", "Female", "Other")),
ADD CONSTRAINT customer_info__Chk_customerType CHECK (customerType IN ("first_acc", "joint_acc", "corporate_client")),
ADD CONSTRAINT customer_info__FK_introducer FOREIGN KEY (introducerID) REFERENCES introducer_info(introducerID),
ADD CONSTRAINT customer_info__FK_bank FOREIGN KEY (bankID) REFERENCES bank_info(bankID)
;