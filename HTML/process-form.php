<?php

$accType=filter_input(INPUT_POST, "accType", FILTER_VALIDATE_INT);
$date=$_POST["date"];
$clientCode=$_POST["clientCode"];
$linkCode=$_POST["linkCode"];
$fAccountName=$_POST["fAccountName"];
$fAccountFHName=$_POST["fAccountFHName"];
$fAccountMName=$_POST["fAccountMName"];
$fDob=$_POST["fDob"];
$fNationality=$_POST["fNationality"];
$fPreAddress=$_POST["fPreAddress"];
$fPreMobile=$_POST["fPreMobile"];
$fPreTel=$_POST["fPreTel"];
$fPerAddress=$_POST["fPerAddress"];
$fPerTel=$_POST["fPerTel"];
$fPerEmail=$_POST["fPerEmail"];
$fOccupation=$_POST["fOccupation"];
$fETin=$_POST["fETin"];


$jAccountantName=$_POST["jAccountantName"];
$jAccountantFHName=$_POST["jAccountant-F/H-Name"];
$jAccountantMotherName=$_POST["jAccountantMotherName"];
$jDob=$_POST["jDob"];
$jOccupation=$_POST["jOccupation"];
$jETin=$_POST["jE-Tin"];

$aAccountantName=$_POST["aAccountantName"];
$aAccountantFHName=$_POST["aAccountant-F/H-Name"];
$aAccountantMotherName=$_POST["aAccountantMotherName"];
$aDob=$_POST["aDob"];
$aOccupation=$_POST["aOccupation"];
$aETin=$_POST["aE-Tin"];
// $=$_POST[""];


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

        
$sql = "INSERT INTO customer_info(customerID,customerName,fatherName,motherName,dob,occupation,eTinID)
        VALUES (?, ?, ?, ?,?,?,?)";

$sql2 = "INSERT INTO first_ac_holder(FcustomerId)
        VALUES (?)";
$sql3 = "INSERT INTO joint_ac_holder(JcustomerId)
            VALUES (?)";
$sql4 = "INSERT INTO authorized_person(authoPerId)
        VALUES (?)";


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


mysqli_stmt_bind_param($stmt, "isssssi",
$clientCode,$fAccountName,$fAccountFHName,$fAccountMName,$fDob,$fOccupation,$fETin);
mysqli_stmt_bind_param($stmt2, "i",
$clientCode);
mysqli_stmt_bind_param($stmt3, "i",
$clientCode);
mysqli_stmt_bind_param($stmt4, "i",
$clientCode);


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

//==========stmt 2nd===========
mysqli_stmt_bind_param($stmt, "isssssi",
$clientCode,$jAccountantName,$jAccountantFHName,$jAccountantMotherName,$jDob,$jOccupation,$jETin);

if ($stmt->execute()) {
    echo "Data inserted successfully for the first query.";
} else {
    echo "Error in the first query: " . $stmt->error;
}
$stmt->close();


//==========stmt3===========
if ($stmt3->execute()) {
    echo "Data inserted successfully for the first query.";
} else {
    echo "Error in the first query: " . $stmt3->error;
}
$stmt3->close();


//============stmt 3rd=========
mysqli_stmt_bind_param($stmt, "isssssi",
$clientCode,$aAccountantName,$aAccountantFHName,$aAccountantMotherName,$aDob,$aOccupation,$aETin);

if ($stmt->execute()) {
    echo "Data inserted successfully for the first query.";
} else {
    echo "Error in the first query: " . $stmt->error;
}
$stmt->close();


//============stmt 4th=========
if ($stmt4->execute()) {
    echo "Data inserted successfully for the first query.";
} else {
    echo "Error in the first query: " . $stmt4->error;
}
$stmt->close();



// mysqli_stmt_execute($stmt);

// echo "Record saved.";
?>
