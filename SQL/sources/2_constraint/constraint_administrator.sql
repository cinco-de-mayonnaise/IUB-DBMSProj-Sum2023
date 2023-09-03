ALTER TABLE administrator
ADD CONSTRAINT administrator__FK_Aemployee FOREIGN KEY (AemployeeId) REFERENCES employee(employeeID);