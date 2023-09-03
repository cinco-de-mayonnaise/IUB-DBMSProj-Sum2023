ALTER TABLE Joint_AC_Holder
ADD CONSTRAINT FK_Jcustomer FOREIGN KEY (JcustomerId) REFERENCES customer_info(customerID);