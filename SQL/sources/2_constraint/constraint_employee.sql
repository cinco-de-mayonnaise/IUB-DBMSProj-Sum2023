ALTER TABLE employee
ADD CONSTRAINT Chk_gender CHECK (gender) IN ("Male", "Female", "Other"),
	CONSTRAINT Chk_employeeType CHECK (employeeType) IN ("RelMan", "Head_Of_Set.", "Admin"),
	CONSTRAINT FK_contact FOREIGN KEY (contactId) REFERENCES contact_info(contactID);