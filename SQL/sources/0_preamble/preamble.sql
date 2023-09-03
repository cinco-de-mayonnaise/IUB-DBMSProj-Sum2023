-- 
-- LankaBangla Database Script by Team BackendBackBone (Abdullah, Ishtiaq, Joy, Tabriji, Mehedi, Salma)
--
--

START TRANSACTION;

-- Drop existing tables for readdition
-- DROP TABLE IF EXISTS Relationship_Manager, Poa_Info, Passport_Info, Nominee, KYC_Profile, Joint_AC_Holder, Introducer_Info, ... -- wait we dont have to write this by hand lmao

SET FOREIGN_KEY_CHECKS=0;


DROP TABLE IF EXISTS account,
administrator,
authorised_person,
bank_info,
bo_account,
bo_nomination,
card,
contact_info,
corporate_client,
credit_facility,
customer_info,
eft,
employee,
first_ac_holder,
guardian_info,
head_of_settlement,
introducer_info,
joint_ac_holder,
kyc_profile,
nominee,
passport_info,
poa_info,
relationship_manager;

SET FOREIGN_KEY_CHECKS=1;
