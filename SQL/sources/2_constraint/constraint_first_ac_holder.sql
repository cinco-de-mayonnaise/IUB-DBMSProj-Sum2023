ALTER TABLE First_AC_Holder
ADD CONSTRAINT FK_customer FOREIGN KEY (FcustomerId) REFERENCES customer_info(customerID);