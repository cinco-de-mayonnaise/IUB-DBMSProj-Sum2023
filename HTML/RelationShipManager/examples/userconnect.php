<?php
// Check if the form was submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $Branch = $_POST['Branch'];
    $Username = $_POST['Username'];
    $EmailAddress = $_POST['Email_Address'];
    $firstname = $_POST['first_name'];
    $lastname = $_POST['last_name'];
    $address = $_POST['address'];
    $city = $_POST['city'];
    $country = $_POST['country'];
    $PostalCode = $_POST['Postal_Code'];
    $About = $_POST['About'];

    // Validate form data (you can add more validation as needed)
    if (empty($EmailAddress)) {
        $error = "Email Address is required.";
    } else {
        // Database connection
        $conn = new mysqli('localhost', 'root', '', 'kyc');
        if ($conn->connect_error) {
            die('Connection Failed: ' . $conn->connect_error);
        } else {
            // Insert data into the database
            $stmt = $conn->prepare("INSERT INTO user(Branch, Username, Email_Address, first_name, last_name, address, city, country, Postal_Code, About) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            $stmt->bind_param("ssssssssis", $Branch, $Username, $EmailAddress, $firstname, $lastname, $address, $city, $country, $PostalCode, $About);
            
            if ($stmt->execute()) {
                echo "Profile Update Successful";
            } else {
                echo  "Error inserting data: " . $stmt->error;
            }

            $stmt->close();
            $conn->close();
        }
    }
}
?>
  





















