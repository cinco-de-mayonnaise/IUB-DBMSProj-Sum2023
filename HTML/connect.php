<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $BOapplicationNo = $_POST['app_id'];
    $accOpeningDate = $_POST['acc_open_date'];
    $boCategory = $_POST['catagory'];
    $boType = $_POST['type'];
    $statementCycleType = isset($_POST['scc_type']) ? $_POST['scc_type'] : array();
    $customerId = $_POST['customer_id'];
    $bankId = $_POST['bank_id'];

    $first_account_holder_id = $_POST['first_account_holder_id'];
    $first_account_holder_bo_id = $_POST['first_account_holder_bo_id'];
}
/*
var_dump($accType,$date,$clientCode,$linkCode,$fAccountName,$fAccountFHName,$fAccountMName
,$fDob,$fNationality,$fPreAddress,$fPreMobile,$fPreTel,$fPerAddress,$fPerTel,$fPerEmail,$fOccupation,
$fETin
);

*/
/*
$=$_POST[""];
$=$_POST[""];
*/



/*
$name = $_POST["name"];
$message = $_POST["message"];
$priority = filter_input(INPUT_POST, "priority", FILTER_VALIDATE_INT);
$type = filter_input(INPUT_POST, "type", FILTER_VALIDATE_INT);
$terms = filter_input(INPUT_POST, "terms", FILTER_VALIDATE_BOOL);

if ( ! $terms) {
    die("Terms must be accepted");
}   
*/

$host = "localhost";
$dbname = "lankabanglatest01";
$username = "root";
$password = "";
        
$conn = mysqli_connect(hostname: $host,
                       username: $username,
                       password: $password,
                       database: $dbname);
        
if (mysqli_connect_errno()) {
    die("Connection error: " . mysqli_connect_error());
}           
        
$sql = "INSERT INTO bo_account(BOapplicationNo, accOpeningDate, boCategory, boType, statementCycleType, customerId, bankId)
        VALUES (?, ?, ?, ?,?,?,?)";
$sql2 = "INSERT INTO first_ac_holder (FcustomerId, boId)
VALUES (?,?)";
$sql3 = "INSERT INTO passport_info (pCustomerId, passportNumber, issuePlace, issueDate, expiryDate)
VALUES (?, ?, ?, ?, ?)";
$sql4 = "INSERT INTO contact_info (contactID, presentAddress, permanentAddress,mobileNumber	,city, postcode, state, country,
fax, email, telephoneNumber)
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";





$stmt = mysqli_stmt_init($conn);
$stmt2 = mysqli_stmt_init($conn);
$stmt3= mysqli_stmt_init($conn);
$stmt4 = mysqli_stmt_init($conn);





if ( ! mysqli_stmt_prepare($stmt, $sql)) {
 
    die(mysqli_error($conn));
}

if ( ! mysqli_stmt_prepare($stmt2, $sql2)) {
 
    die(mysqli_error($conn));
}
if ( ! mysqli_stmt_prepare($stmt3, $sql3)) {
 
    die(mysqli_error($conn));
}
if ( ! mysqli_stmt_prepare($stmt4, $sql4)) {
 
    die(mysqli_error($conn));
}


mysqli_stmt_bind_param($stmt, "issssii",
$BOapplicationNo, $accOpeningDate, $boCategory, $boType, $statementCycleType, $customerId, $bankId);
mysqli_stmt_bind_param($stmt2, "ii",
$FcustomerId, $boId );
mysqli_stmt_bind_param($stmt3, "issss",
$pCustomerId, $passportNumber, $issuePlace, $issueDate, $expiryDate );
mysqli_stmt_bind_param($stmt4, "issssssssss",
$contactID, $presentAddress, $permanentAddress, $mobileNumber, $city, $postcode, $state, $country,
$fax, $email, $telephoneNumber  );



//==========stmt 1st===========
if ($stmt->execute()) {
    echo "Data inserted successfully for the first query.";
} else {
    echo "Error in the first query: " . $stmt->error;
}
$stmt->close();

//==========stmt2==========

if ($stmt2->execute()) {
    echo "\nData inserted successfully for the first query.";
} else {
    echo "Error in the first query: " . $stmt2->error;
}
$stmt2->close();

if ($stmt3->execute()) {
    echo "Data inserted successfully for the first query.";
} else {
    echo "Error in the first query: " . $stmt3->error;
}
$stmt3->close();

if ($stmt4->execute()) {
    echo "Data inserted successfully for the first query.";
} else {
    echo "Error in the first query: " . $stmt4->error;
}
$stmt->close();


echo "Record saved.";

?>