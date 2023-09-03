CREATE TABLE Credit_Facility(
	creNum VARCHAR(20),
	name VARCHAR(100),
	recommendedBy VARCHAR(100),
	approvedBy VARCHAR(100),
	customerID INT  -- constraint foreign key -> customer
	
	-- constraints implemented
);