create table bo_account(
    
    BOapplicationNo int,
    
    boCategory varchar(20),
    boType varchar(20),
    accOpeningDate date,
    customerId int ,-- constraint ->foreign key customer
    bankId int ,-- constraint->foreign key bank
    statementCycleType  varchar(25)
);