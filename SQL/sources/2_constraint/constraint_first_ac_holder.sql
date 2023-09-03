ALTER TABLE First_AC_Holder
ADD CONSTRAINT First_AC_Holder__FK_customer FOREIGN KEY (FcustomerId) REFERENCES customer_info(customerID);