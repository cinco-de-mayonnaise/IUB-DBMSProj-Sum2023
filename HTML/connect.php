<?php
// Database configuration
define('DB_HOST', 'localhost:3307');
define('DB_USER', 'root');
define('DB_PASSWORD', 'root');
define('DB_NAME', 'lankabangla');

// Create database connection
$conn = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $app_id = $_POST['app_id'];
    $acc_open_date = $_POST['acc_open_date'];
    $category = $_POST['catagory'];
    $type = $_POST['type'];
    $sccType = isset($_POST['scc_type']) ? $_POST['scc_type'] : array();

    // ... and so on, you need to retrieve all other form fields here
   }

    // Prepare and execute the SQL query to insert data into the database
    $stmt1 = $conn->prepare("INSERT INTO bo_account(BOapplicationNo, accOpeningDate, boCategory, boType, statementCycleType) VALUES (?, ?, ?, ?, ?)");

    $stmt1->bind_param("sssssssssssssssssssssssssssssssssssssssssss", $app_id, $date, $category, $type, $CDBL_id, $BO_id, $acc_open_date, $full_name, $short_name, $title, $cp_name, $gender, $occupation, $f_name, $m_name, $address, $city, $post_code, $state, $country, $telephone, $phone, $fax, $email, $passportNo, $issuePlace, $issueDate, $expiryDate, $bankName, $branchName, $accountNo, $routingNo, $edcType, $taxExemption, $taxId, $residency, $nationality, $dob, $sccType, $refNo, $dor, $caseCompany, $regNo);

    $stmt2 = $conn->prepare("INSERT INTO bo_form2 (j_full_name, j_short_name, j_titles, depository, d_bo_code, exchange_type, t_id,
    delivery_type, operate_by,
    first_applicant_name, first_applicant_date, second_applicant_name, second_applicant_date,
    third_signatory_name, third_signatory_date, joint_account_type, account_operated_by,
    introducer_name, account_id)
   VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?)");

$stmt2->bind_param(
    "sssssssssssssssssss",
    $jFullName, $jShortName, $jTitle, $depository, $dBoCode, $exchangeType, $tradingId,
     $deliveryType, $operateBy,
    $firstApplicantName, $firstApplicantDate, $secondApplicantName, $secondApplicantDate,
    $thirdSignatoryName, $thirdSignatoryDate, $jointAccountType, $accountOperatedBy,
    $introducerName, $accountID
);

// ... (previous code)

// Execute the prepared statement for the first query
if ($stmt1->execute()) {
    echo "Data inserted successfully for the first query.";
} else {
    echo "Error in the first query: " . $stmt1->error;
}

// Close the first prepared statement
$stmt1->close();

// Execute the prepared statement for the second query
if ($stmt2->execute()) {
    echo "Data inserted successfully for the second query.";
} else {
    echo "Error in the second query: " . $stmt2->error;
}

// Close the second prepared statement
$stmt2->close();

// Close the database connection
$conn->close();
?>