ALTER TABLE administrator
ADD CONSTRAINT FK_Aemployee FOREIGN KEY (AemployeeId) REFERENCES employee(employeeID);