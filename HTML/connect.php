<?php
<<<<<<< HEAD
// Database configuration
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'lankabanglatest01');

// Create database connection
$conn = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
=======
>>>>>>> b8cae7beb902652f548379fafe3b6ef5b2a93ec7

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $BOapplicationNo = $_POST['app_id'];
    $accOpeningDate = $_POST['acc_open_date'];
    $boCategory = $_POST['catagory'];
    $boType = $_POST['type'];
    //$statementCycleType = isset($_POST['scc_type']) ? $_POST['scc_type'] : array();
    $customerId = $_POST['customer_id'];
    $bankId = $_POST['bank_id'];
}
/*
var_dump($accType,$date,$clientCode,$linkCode,$fAccountName,$fAccountFHName,$fAccountMName
,$fDob,$fNationality,$fPreAddress,$fPreMobile,$fPreTel,$fPerAddress,$fPerTel,$fPerEmail,$fOccupation,
$fETin
);

<<<<<<< HEAD
$stmt1 = $conn->prepare("INSERT INTO bo_account(BOapplicationNo, accOpeningDate, boCategory, boType, customerId, bankId) VALUES (?, ?, ?, ?, ?, ?)");

$stmt1->bind_param("isssii", $BOapplicationNo, $accOpeningDate, $boCategory, $boType, $customerId, $bankId);
// Execute the prepared statement for the first query
if ($stmt1->execute()) {
    echo "Data inserted successfully for the first query.";
} else {
    echo "Error in the first query: " . $stmt1->error;
=======
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
>>>>>>> b8cae7beb902652f548379fafe3b6ef5b2a93ec7
}

mysqli_stmt_bind_param($stmt, "issssii",
$BOapplicationNo, $accOpeningDate, $boCategory, $boType, $statementCycleType, $customerId, $bankId);

mysqli_stmt_execute($stmt);

echo "Record saved.";