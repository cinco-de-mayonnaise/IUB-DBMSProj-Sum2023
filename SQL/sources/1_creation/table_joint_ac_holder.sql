CREATE TABLE Joint_A/C_Holder(
	JcustomerId INT, -- constraint Foreign Key in Customer_Table
	boId INT,
	
        CONSTRAINT Joint_A/C_Holder_PK PRIMARY KEY (JcustomerId, boId)
);