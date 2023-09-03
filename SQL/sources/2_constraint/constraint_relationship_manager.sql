ALTER TABLE relationship_manager
ADD CONSTRAINT relationship_manager__FK_RMemployee FOREIGN KEY (RMemployeeID) REFERENCES employee(employeeID);