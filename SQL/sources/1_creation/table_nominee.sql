create table nominee(
    nomineeId int,
    percentage float,
    relationshipWcus varchar(50),
    name varchar(100),
    shortName varchar(50),
    signature LONGBLOB ,
    title varchar(50),
    contactId int,  -- constraint ->references contactInfo
    residencyType varchar(20), -- constraint can be of only 2 types
    passportNumber varchar(20),  -- constraint references passportInfo 
    isMinor boolean,
    dateOfBirth date,
    maturityDate date,
    customerId int,  -- constraint -->references customer
    guardianId int  -- constraint guardianId
    
);