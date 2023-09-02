CREATE TABLE First_A/C_Holder(
	FcustomerId INT, -- constraint Foreign Key in Customer_Table
	boId INT,
	
        CONSTRAINT First_A/C_Holder_PK PRIMARY KEY (FcustomerId, boId)
);