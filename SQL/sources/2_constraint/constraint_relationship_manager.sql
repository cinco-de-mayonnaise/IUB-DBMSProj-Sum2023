ALTER TABLE relationship_manager
ADD CONSTRAINT FK_RMemployee FOREIGN KEY (RMemployeeID) REFERENCES employee(employeeID);