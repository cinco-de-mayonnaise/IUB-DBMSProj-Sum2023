create table credit_facility(
        creNum varchar(20),
    	name varchar(100),
        recommendedBy varchar(100),
    	approvedBy varchar(100),
    	customerID int  -- constraint foeign key -> customer

);