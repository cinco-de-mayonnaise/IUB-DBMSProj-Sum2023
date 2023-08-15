<?php
// Database configuration
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'BO_Acc');

// Create database connection
$conn = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $app_id = $_POST['app_id'];
    $date = $_POST['date'];
    $category = $_POST['catagory'];
    $type = $_POST['type'];
    $CDBL_id = $_POST['CDBL_id'];
    $BO_id = $_POST['BO_id'];
    $acc_open_date = $_POST['acc_open_date'];
    $full_name = $_POST['full_name'];
    $short_name = $_POST['short_name'];
    $title = $_POST['title'];
    $cp_name = $_POST['cp_name'];
    $gender = $_POST['gender'];
    $occupation = $_POST['occupation'];
    $f_name = $_POST['f_name'];
    $m_name = $_POST['m_name'];
    $address = $_POST['address'];
    $city = $_POST['city'];
    $post_code = $_POST['post_code'];
    $state = $_POST['state'];
    $country = $_POST['country'];
    $telephone = $_POST['telephone'];
    $phone = $_POST['phone'];
    $fax = $_POST['fax'];
    $email = $_POST['email'];
    $passportNo = $_POST['pass_name'];
    $issuePlace = $_POST['issue_place'];
    $issueDate = $_POST['issue_date'];
    $expiryDate = $_POST['expiry_date'];
    $bankName = $_POST['bank_name'];
    $branchName = $_POST['branch_name'];
    $accountNo = $_POST['acc_no'];
    $routingNo = $_POST['routing_number'];
    $edcType = isset($_POST['edc_type']) ? $_POST['edc_type'] : array();
    $taxExemption = isset($_POST['tax_exe']) ? $_POST['tax_exe'] : array();
    $taxId = $_POST['tax_id'];
    $residency = isset($_POST['residency']) ? $_POST['residency'] : array();
    $nationality = $_POST['r_nationality'];
    $dob = $_POST['dob'];
    $sccType = isset($_POST['scc_type']) ? $_POST['scc_type'] : array();
    $refNo = $_POST['ref_no'];
    $dor = $_POST['dor'];
    $caseCompany = $_POST['case_company'];
    $regNo = $_POST['reg_no'];
    // ... and so on, you need to retrieve all other form fields here


    $jFullName = $_POST['j_full_name'];
    $jShortName = $_POST['j_short_name'];
    $jTitle = $_POST['j_titles'];
    $depository = isset($_POST['depository']) ? $_POST['depository'] : '';
    $dBoCode = $_POST['d_bo_code'];
    $exchangeType = isset($_POST['exchange_type']) ? $_POST['exchange_type'] : '';
    $tradingId = $_POST['t_id'];
$deliveryType = isset($_POST['delivary_type']) ? $_POST['delivary_type'] : '';
$operateBy = $_POST['opprate_by'];
$firstApplicantName = $_POST['fa_name'];
$firstApplicantDate = $_POST['fa_date'];
$secondApplicantName = $_POST['sa_name'];
$secondApplicantDate = $_POST['sa_date'];
$thirdSignatoryName = $_POST['s_name'];
$thirdSignatoryDate = $_POST['s_date'];
$jointAccountType = isset($_POST['sjc']) ? $_POST['sjc'] : '';
$accountOperatedBy = $_POST['opprate_by'];
$introducerName = $_POST['i_name'];
$accountID = $_POST['i_acc_id']; }

    // Prepare and execute the SQL query to insert data into the database
    $stmt1 = $conn->prepare("INSERT INTO bo_form1(app_id, date, category, type, CDBL_id, BO_id, acc_open_date, full_name, short_name, title, cp_name, gender, occupation, f_name, m_name, address, city, post_code, state, country, telephone, phone, fax, email, passportNo, issuePlace, issueDate, expiryDate, bankName, branchName, accountNo, routingNo, edcType, taxExemption, taxId, residency, nationality, dob, sccType, refNo, dor, caseCompany, regNo) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

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