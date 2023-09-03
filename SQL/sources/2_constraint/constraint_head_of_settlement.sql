ALTER TABLE Head_of_Settlement
ADD CONSTRAINT FK_HoSemployee FOREIGN KEY (HoSemployeeId) REFERENCES employee(employeeID);