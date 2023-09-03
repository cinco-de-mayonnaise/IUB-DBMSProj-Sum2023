ALTER TABLE Head_of_Settlement
ADD CONSTRAINT Head_of_Settlement__FK_HoSemployee FOREIGN KEY (HoSemployeeId) REFERENCES employee(employeeID);