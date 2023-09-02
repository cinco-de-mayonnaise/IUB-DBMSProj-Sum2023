CREATE TABLE Authorised_Person(
    authoPerId int primary key,
    isShareHolderOfStock boolean,
    signature LONGBLOB,
    ACcustomerId int  -- constraint foreign key ->customer
    
);