<?php
// Database configuration
 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $app_id = $_POST['app_id'];
    $acc_open_date = $_POST['acc_open_date'];
    $category = $_POST['catagory'];
    $type = $_POST['type'];
    $sccType = isset($_POST['scc_type']) ? $_POST['scc_type'] : array();
    $customer_id = $_POST['customer_id'];
    $bank_id = $_POST['bank_id'];

    $first_account_holder_id = $_POST['first_account_holder_id'];
    $first_account_holder_bo_id = $_POST['first_account_holder_bo_id'];

    $pass_number = $_POST['pass_number'];
    $issuePlace = $_POST['issue_place'];
    $issueDate = $_POST['issue_date'];
    $expiryDate = $_POST['expiry_date'];

    $first_account_holder_contact_id = $_POST['first_account_holder_contact_id'];
    $f_permanent_address = $_POST['f_permanent_address'];
    $f_present_address = $_POST['f_present_address'];
    $f_city = $_POST['f_city'];
    $f_post_code = $_POST['f_post_code'];
    $f_state = $_POST['f_state'];
    $f_country = $_POST['f_country'];
    $f_telephone = $_POST['f_telephone'];
    $f_mobilephone = $_POST['f_mobilephone'];
    $f_fax = $_POST['f_fax'];
    $f_email = $_POST['f_email'];



    // ... and so on, you need to retrieve all other form fields here
   }
   $host = "localhost";
$dbname = "database";
$username = "root";
$password = " ";
        
$conn = mysqli_connect(hostname: $host,
                       username: $username,
                       password: $password,
                       database: $dbname);
        
if (mysqli_connect_errno()) {
    die("Connection error: " . mysqli_connect_error());
}

    // Prepare and execute the SQL query to insert data into the database
    $stmt1 = $conn->prepare("INSERT INTO bo_account(BOapplicationNo, accOpeningDate, boCategory, boType, statementCycleType, customerId, bankId) VALUES (?, ?, ?, ?, ?, ?, ?)");

    $stmt1->bind_param("isssiis", $BOapplicationNo,$accOpeningDate,$boCategory,$boType, $statementCycleType, $customerId, $bankId);

    $stmt2 = $conn->prepare("INSERT INTO first_ac_holder (FcustomerId, boId)
   VALUES (?, ?)");

$stmt2->bind_param(
    "ii",
    $FcustomerId, $boId   
);

$stmt3 = $conn->prepare("INSERT INTO passport_info (pCustomerId, passportNumber, issuePlace, issueDate, expiryDate)
VALUES (?, ?, ?, ?, ?)");

$stmt3->bind_param(
 "issss",
 $pCustomerId, $passportNumber, $issuePlace, $issueDate, $expiryDate  
);

$stmt4 = $conn->prepare("INSERT INTO contact_info (contactID, presentAddress, permanentAddress,mobileNumber	,city, postcode, state, country,
fax, email, telephoneNumber)
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

$stmt4->bind_param(
 "issssssssss",
 $contactID, $presentAddress, $permanentAddress, $mobileNumber, $city, $postcode, $state, $country,
$fax, $email, $telephoneNumber  
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

if ($stmt3->execute()) {
    echo "Data inserted successfully for the second query.";
} else {
    echo "Error in the second query: " . $stmt2->error;
}

// Close the second prepared statement
$stmt3->close();

// Close the database connection
$conn->close();

if ($stmt4->execute()) {
    echo "Data inserted successfully for the second query.";
} else {
    echo "Error in the second query: " . $stmt2->error;
}

// Close the second prepared statement
$stmt4->close();

// Close the database connection
$conn->close();
?>