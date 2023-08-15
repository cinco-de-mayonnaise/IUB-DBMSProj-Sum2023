<?php
$BO_ID = $_POST['BO_ID'];
$Internal_Ref_No = $_POST['Internal_Ref_No'];
$Customer_Account_Name = $_POST['Customer_Account_Name'];
$Account_Type = $_POST['Account_Type'];
$Relationship_Manager_Name = $_POST['Relationship_Manager_Name'];
$Fund_Source = $_POST['Fund_Source'];
$BO_Info = $_POST['BO_Info'];
$Passport_No = $_POST['Passport_No'];
$PO_for_Passport = isset($_POST["PO_for_Passport"]) ? $_POST["PO_for_Passport"] : "";
$Voter_ID = $_POST['Voter_ID'];
$PO_for_Voter_ID = isset($_POST["PO_for_Voter_ID"]) ? $_POST["PO_for_Voter_ID"] : "";
$NID = $_POST['NID'];
$PO_for_NID = isset($_POST["PO_for_NID"]) ? $_POST["PO_for_NID"] : "";
$TIN_No = $_POST['TIN_No'];
$PO_for_TIN = isset($_POST["PO_for_TIN"]) ? $_POST["PO_for_TIN"] : "";
$VAT_Reg_No = $_POST['VAT_Reg_No'];
$PO_for_VAT_Reg = isset($_POST["PO_for_VAT_Reg"]) ? $_POST["PO_for_VAT_Reg"] : "";
$Driving_License_No = $_POST['Driving_License_No'];
$PO_for_DL_no = isset($_POST["PO_for_DL_no"]) ? $_POST["PO_for_DL_no"] : "";
$Occupation = $_POST['Occupation'];
$comments = $_POST['comments'];
$signatures = $_POST['signatures'];
$RM_signature = $_POST['RM_signature'];
$Name_of_RM = $_POST['Name_of_RM'];
$Date = $_POST['Date'];
$signature_of_verifier = $_POST['signature_of_verifier'];
$verified_by = $_POST['verified_by'];
$Date_of_verification = $_POST['Date_of_verification'];
$Signature_of_approver = $_POST['Signature_of_approver'];
$Approved_by = $_POST['Approved_by'];
$Approved_Date = $_POST['Approved_Date'];

$conn = new mysqli('localhost', 'root', '', 'kyc');
if ($conn->connect_error) {
    die('Connection Failed: ' . $conn->connect_error);
} else {
    $stmt = $conn->prepare("INSERT INTO lbangla(BO_ID, Internal_Ref_No, Customer_Account_Name, Account_Type, Relationship_Manager_Name,
     Fund_Source, BO_Info, Passport_No, PO_for_Passport, Voter_ID, PO_for_Voter_ID, NID, PO_for_NID, TIN_No,
     PO_for_TIN, VAT_Reg_No, PO_for_VAT_Reg, Driving_License_No, PO_for_DL_no, Occupation, comments, signatures, RM_signature,
     Name_of_RM, Date, signature_of_verifier, verified_by, Date_of_verification, Signature_of_approver, Approved_by,
     Approved_Date) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("iisssssisisisisisisssssssssssss", $BO_ID, $Internal_Ref_No, $Customer_Account_Name, $Account_Type, $Relationship_Manager_Name,
    $Fund_Source, $BO_Info, $Passport_No, $PO_for_Passport, $Voter_ID, $PO_for_Voter_ID, $NID, $PO_for_NID, $TIN_No,
    $PO_for_TIN, $VAT_Reg_No, $PO_for_VAT_Reg, $Driving_License_No, $PO_for_DL_no, $Occupation, $comments, $signatures, $RM_signature,
    $Name_of_RM, $Date, $signature_of_verifier, $verified_by, $Date_of_verification, $Signature_of_approver, $Approved_by,
    $Approved_Date);
    $stmt->execute();
    echo "Registration successful";
    $stmt->close();
    $conn->close();
}
?>
