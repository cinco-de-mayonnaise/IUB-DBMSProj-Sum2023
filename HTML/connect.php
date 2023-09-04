<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $BOapplicationNo = $_POST['app_id'];
    $accOpeningDate = $_POST['acc_open_date'];
    $boCategory = $_POST['catagory'];
    $boType = $_POST['type'];
    $statementCycleType = isset($_POST['scc_type']) ? $_POST['scc_type'] : array();
    $customerId = $_POST['customer_id'];
    $bankId = $_POST['bank_id'];
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
$dbname = "database";
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

$stmt = mysqli_stmt_init($conn);

if ( ! mysqli_stmt_prepare($stmt, $sql)) {
 
    die(mysqli_error($conn));
}

mysqli_stmt_bind_param($stmt, "issssii",
$BOapplicationNo, $accOpeningDate, $boCategory, $boType, $statementCycleType, $customerId, $bankId);

mysqli_stmt_execute($stmt);

echo "Record saved.";