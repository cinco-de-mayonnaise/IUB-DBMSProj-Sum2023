CREATE TABLE Nominee(
    nomineeId int,
    percentage float,
    relationshipWcus varchar(50),
    name varchar(100),
    shortName varchar(50),
    signature LONGBLOB,
    title varchar(50),
    contactId int,  -- constraint ->foreign key references contactInfo
    residencyType varchar(20), -- constraint: check, can be of only 2 types 'resident' and 'non resident'
    passportNumber varchar(20),  -- constraint: foreign key references passportInfo 
    isMinor boolean,
    dateOfBirth date,
    maturityDate date,
    customerId int,  -- constraint --> foreign key references customer
    guardianId int  -- constraint -> foreign key references guardianId
    
);