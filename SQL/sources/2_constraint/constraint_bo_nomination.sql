ALTER TABLE bo_nomination
ADD CONSTRAINT bo_nomination__FK_guardian FOREIGN KEY (guardianId) REFERENCES guardian_info(guardianID),
ADD CONSTRAINT bo_nomination__FK_nominee FOREIGN KEY (nomineeId) REFERENCES nominee(nomineeId);