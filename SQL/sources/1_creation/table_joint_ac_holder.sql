CREATE TABLE Joint_AC_Holder(
	JcustomerId INT, -- constraint Foreign Key in Customer_Table
	boId INT,
	
	CONSTRAINT Joint_AC_Holder_PK PRIMARY KEY (JcustomerId, boId)
);