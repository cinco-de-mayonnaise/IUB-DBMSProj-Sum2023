ALTER TABLE bo_nomination
ADD CONSTRAINT FK_guardian FOREIGN KEY (guardianId) REFERENCES guardian_info(guardianID),
	CONSTRAINT FK_nominee FOREIGN KEY (nomineeId) REFERENCES nominee(nomineeId);