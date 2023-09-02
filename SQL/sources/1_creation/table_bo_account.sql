create table BO_Account(
    
    BOapplicationNo int PRIMARY KEY,
    boCategory varchar(20),
    boType varchar(20),
    accOpeningDate date,
    customerId int ,-- constraint ->foreign key customer
    bankId int ,-- constraint->foreign key bank
    statementCycleType  varchar(25)
);