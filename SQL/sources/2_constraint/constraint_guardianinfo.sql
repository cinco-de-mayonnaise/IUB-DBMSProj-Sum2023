ALTER TABLE guardian_info
ADD --CONSTRAINT Chk_relation_minor CHECK (relationshipWithMinor) IN ("Father", "Mother", "Sister"), -- not necessary
	CONSTRAINT FK_passport FOREIGN KEY (passportNumber) REFERENCES Passport_Info(passportNumber),
	CONSTRAINT FK_contact FOREIGN KEY (contactId) REFERENCES contact_info(contactID);