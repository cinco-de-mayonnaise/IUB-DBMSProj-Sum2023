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

$JclientCode=$_POST['JclientCode'];
$AclientCode=$_POST["AclientCode"];
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
$dbname = "lankabangla01";
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
$sql4 = "INSERT INTO authorised_person(authoPerId)
        VALUES (?)";

$sql5 = "INSERT INTO customer_info(customerID,customerName,fatherName,motherName,dob,occupation,eTinID)
        VALUES (?, ?, ?, ?,?,?,?)";
$sql6 = "INSERT INTO customer_info(customerID,customerName,fatherName,motherName,dob,occupation,eTinID)
VALUES (?, ?, ?, ?,?,?,?)";


$stmt = mysqli_stmt_init($conn);
$stmt2 = mysqli_stmt_init($conn);
$stmt3= mysqli_stmt_init($conn);
$stmt4 = mysqli_stmt_init($conn);
$stmt5 = mysqli_stmt_init($conn);
$stmt6 = mysqli_stmt_init($conn);

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
if ( ! mysqli_stmt_prepare($stmt5, $sql5)) {
 
    die(mysqli_error($conn));
}
if ( ! mysqli_stmt_prepare($stmt6, $sql6)) {
 
    die(mysqli_error($conn));
}


mysqli_stmt_bind_param($stmt, "isssssi",
$clientCode,$fAccountName,$fAccountFHName,$fAccountMName,$fDob,$fOccupation,$fETin);
mysqli_stmt_bind_param($stmt2, "i",
$clientCode);
mysqli_stmt_bind_param($stmt3, "i",
$JclientCode);
mysqli_stmt_bind_param($stmt4, "i",
$AclientCode);
mysqli_stmt_bind_param($stmt5, "isssssi",
$JclientCode,$aAccountantName,$aAccountantFHName,$aAccountantMotherName,$aDob,$aOccupation,$aETin);

mysqli_stmt_bind_param($stmt6, "isssssi",
$AclientCode,$jAccountantName,$jAccountantFHName,$jAccountantMotherName,$jDob,$jOccupation,$jETin);

//==========stmt 1st===========
if ($stmt->execute()) {
    echo "Data inserted successfully for the first query.";
} else {
    echo "Error in the first query: " . $stmt->error;
}
$stmt->close();

//==========stmt2==========

if ($stmt2->execute()) {
    echo "Data inserted successfully for the first query.";
} else {
    echo "Error in the first query: " . $stmt2->error;
}
$stmt2->close();

//==========stmt 5===========

if ($stmt5->execute()) {
    echo "Data inserted successfully for the first query.";
} else {
    echo "Error in the first query: " . $stmt5->error;
}
$stmt5->close();


//==========stmt3===========
if ($stmt3->execute()) {
    echo "Data inserted successfully for the first query.";
} else {
    echo "Error in the first query: " . $stmt3->error;
}
$stmt3->close();


//============stmt 6=========

if ($stmt6->execute()) {
    echo "Data inserted successfully for the first query.";
} else {
    echo "Error in the first query: " . $stmt6->error;
}
$stmt6->close();


//============stmt 4th=========
if ($stmt4->execute()) {
    echo "Data inserted successfully for the first query.";
} else {
    echo "Error in the first query: " . $stmt4->error;
}
$stmt4->close();



// mysqli_stmt_execute($stmt);

// echo "Record saved.";
?>
