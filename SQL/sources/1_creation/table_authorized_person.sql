create table AUTHORISED_PERSON(
    authoPerId int primary key,
    isShareHolderOfStock boolean,
    signeture LONGBLOB,
    ACcustomerId int  -- constraint foreign key ->customer
    
    );