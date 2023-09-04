<?php
// Database configuration
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'database');

// Create database connection
$conn = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $BOapplicationNo = $_POST['app_id'];
    $accOpeningDate = $_POST['acc_open_date'];
    $boCategory = $_POST['catagory'];
    $boType = $_POST['type'];
    $statementCycleType = isset($_POST['scc_type']) ? $_POST['scc_type'] : array();
    $customerId = $_POST['customer_id'];
    $bankId = $_POST['bank_id'];
}

$stmt1 = $conn->prepare("INSERT INTO bo_account(BOapplicationNo, accOpeningDate, boCategory, boType, statementCycleType, customerId, bankId) VALUES (?, ?, ?, ?, ?, ?, ?)");

$stmt1->bind_param("issssis", $BOapplicationNo, $accOpeningDate, $boCategory, $boType, $statementCycleType, $customerId, $bankId);

// Execute the prepared statement for the first query
if ($stmt1->execute()) {
    echo "Data inserted successfully for the first query.";
} else {
    echo "Error in the first query: " . $stmt1->error;
}

// Close the first prepared statement
$stmt1->close();
// Close the database connection
$conn->close();
?>
