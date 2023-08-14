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
$dbname = "cai_db";
$username = "root";
$password = "";
        
$conn = mysqli_connect(hostname: $host,
                       username: $username,
                       password: $password,
                       database: $dbname);
        
if (mysqli_connect_errno()) {
    die("Connection error: " . mysqli_connect_error());
}           
        
$sql = "INSERT INTO acctable (accType,date,clientCode,linkCode,fAccountName,fAccountFHName,fAccountMName
,fDob,fNationality,fPreAddress,fPreMobile,fPreTel,fPerAddress,fPerTel,fPerEmail,fOccupation,
fETin)
        VALUES (?, ?, ?, ?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

$stmt = mysqli_stmt_init($conn);

if ( ! mysqli_stmt_prepare($stmt, $sql)) {
 
    die(mysqli_error($conn));
}

mysqli_stmt_bind_param($stmt, "isiissssssiisisss",
$accType,$date,$clientCode,$linkCode,$fAccountName,$fAccountFHName,$fAccountMName
,$fDob,$fNationality,$fPreAddress,$fPreMobile,$fPreTel,$fPerAddress,$fPerTel,$fPerEmail,$fOccupation,
$fETin);

mysqli_stmt_execute($stmt);

echo "Record saved.";