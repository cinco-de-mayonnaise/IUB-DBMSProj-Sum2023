ALTER TABLE customer_info
ADD CONSTRAINT FK_Customer_Info FOREIGN KEY (contactID) REFERENCES contact_info(contactID),
	CONSTRAINT Chk_gender CHECK (gender) IN ("Male", "Female", "Other"),
	CONSTRAINT Chk_customerType CHECK (customerType) IN ("first_acc", "joint_acc", "corporate_client"),
	CONSTRAINT FK_introducer FOREIGN KEY (introducerID) REFERENCES introducer_info(introducerID),
	CONSTRAINT FK_bank FOREIGN KEY (bankID) REFERENCES bank_info(bankID)
;