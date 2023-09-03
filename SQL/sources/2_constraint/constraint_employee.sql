ALTER TABLE employee
ADD CONSTRAINT employee__Chk_gender CHECK (gender IN ("Male", "Female", "Other")),
ADD CONSTRAINT employee__Chk_employeeType CHECK (employeeType IN ("RelMan", "Head_Of_Set.", "Admin")),
ADD CONSTRAINT employee__FK_contact FOREIGN KEY (contactId) REFERENCES contact_info(contactID);