ALTER TABLE guardian_info
 -- ADD CONSTRAINT Chk_relation_minor CHECK (relationshipWithMinor IN ("Father", "Mother", "Sister")), -- not necessary
 -- ADD CONSTRAINT guardian_info__FK_passport FOREIGN KEY (passportNumber) REFERENCES Passport_Info(passportNumber),
ADD CONSTRAINT guardian_info__FK_contact FOREIGN KEY (contactId) REFERENCES contact_info(contactID);