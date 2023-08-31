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
<<<<<<< HEAD
$fETin=$_POST["fE-Tin"];
=======
$fETin=$_POST["fETin"];
/*
var_dump($accType,$date,$clientCode,$linkCode,$fAccountName,$fAccountFHName,$fAccountMName
,$fDob,$fNationality,$fPreAddress,$fPreMobile,$fPreTel,$fPerAddress,$fPerTel,$fPerEmail,$fOccupation,
$fETin
);

*/
>>>>>>> e27e02f168a14f8d4d6c32cf32bae08ef9448ed8
/*
$=$_POST[""];
$=$_POST[""];
*/


<<<<<<< HEAD
/*

=======

/*
>>>>>>> e27e02f168a14f8d4d6c32cf32bae08ef9448ed8
$name = $_POST["name"];
$message = $_POST["message"];
$priority = filter_input(INPUT_POST, "priority", FILTER_VALIDATE_INT);
$type = filter_input(INPUT_POST, "type", FILTER_VALIDATE_INT);
$terms = filter_input(INPUT_POST, "terms", FILTER_VALIDATE_BOOL);

if ( ! $terms) {
    die("Terms must be accepted");
}   
*/

<<<<<<< HEAD
$host = "localhost";
$dbname = "cai_db";
$username = "root";
$password = "";
=======
$host = "localhost:3307";
$dbname = "lankabangla";
$username = "root";
$password = "root";
>>>>>>> e27e02f168a14f8d4d6c32cf32bae08ef9448ed8
        
$conn = mysqli_connect(hostname: $host,
                       username: $username,
                       password: $password,
                       database: $dbname);
        
if (mysqli_connect_errno()) {
    die("Connection error: " . mysqli_connect_error());
}           
        
<<<<<<< HEAD
$sql = "INSERT INTO acctable (name, body, priority, type)
=======
$sql = "INSERT INTO acctable (accType,date,clientCode,linkCode,fAccountName,fAccountFHName,fAccountMName
,fDob,fNationality,fPreAddress,fPreMobile,fPreTel,fPerAddress,fPerTel,fPerEmail,fOccupation,
fETin)
>>>>>>> e27e02f168a14f8d4d6c32cf32bae08ef9448ed8
        VALUES (?, ?, ?, ?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

$stmt = mysqli_stmt_init($conn);

if ( ! mysqli_stmt_prepare($stmt, $sql)) {
 
    die(mysqli_error($conn));
}

<<<<<<< HEAD
mysqli_stmt_bind_param($stmt, "ssii",
                       $name,
                       $message,
                       $priority,
                       $type);
=======
mysqli_stmt_bind_param($stmt, "isiissssssiisisss",
$accType,$date,$clientCode,$linkCode,$fAccountName,$fAccountFHName,$fAccountMName
,$fDob,$fNationality,$fPreAddress,$fPreMobile,$fPreTel,$fPerAddress,$fPerTel,$fPerEmail,$fOccupation,
$fETin);
>>>>>>> e27e02f168a14f8d4d6c32cf32bae08ef9448ed8

mysqli_stmt_execute($stmt);

echo "Record saved.";