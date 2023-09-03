ALTER TABLE Joint_AC_Holder
ADD CONSTRAINT Joint_AC_Holder__FK_Jcustomer FOREIGN KEY (JcustomerId) REFERENCES customer_info(customerID);