CREATE TABLE First_AC_Holder(
	FcustomerId INT, -- constraint Foreign Key in Customer_Table
	boId INT,
	
    CONSTRAINT First_AC_Holder_PK PRIMARY KEY (FcustomerId, boId)
);