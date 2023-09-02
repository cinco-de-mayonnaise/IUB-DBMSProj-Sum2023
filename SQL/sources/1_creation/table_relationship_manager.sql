CREATE TABLE Relationship_Manager(
	RMemployeeID INT PRIMARY KEY, -- constraint Foreign Key Employee_Table
	verificationCode INT, -- constraint: check must be 4 digits
	verificationDate DATE
);