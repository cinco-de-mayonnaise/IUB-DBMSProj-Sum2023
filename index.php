<!doctype html>
<?php 
function connect_to_db()
{
	$servername = "localhost";
	$dbusername = "root";
	$dbpassword = "";
	$dbname = "lankabangla01";
	
	// Create a new mysqli instance
	$conn = new mysqli($servername, $dbusername, $dbpassword, $dbname);
	
	// Check connection
	if ($conn->connect_error)
		die("Connection failed: " . $conn->connect_error);
		
	return $conn;
}

?>

<html lang="en">
  <head>

  	<title>Sign In Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="./login-form-14/css/style.css">
	
	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Administrator Login</h2>
				</div>
			</div>
			<div class="row justify-content-center" >
				<div class="col-md-12 col-lg-10" id="card">
					<div class="wrap d-md-flex">
						<div class="img" style="background-image: url(./login-form-14/images/lanka.jpg);">
			      </div>
						<div class="login-wrap p-4 p-md-5">
			      	<div class="d-flex">
			      		<div class="w-100">
			      			<h3 class="mb-4">Sign In</h3>
			      		</div>
								<div class="w-100">
									<p class="social-media d-flex justify-content-end">
										<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a>
										<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a>
									</p>
								</div>
			      	</div>
					<form action="#" method="POST" class="signin-form">
			      		<div class="form-group mb-3">
			      			<label class="label" for="name">Username</label>
			      			<input type="text" name="TFusername" class="form-control" id="username" placeholder="Username" required>
			      		</div>
						<div class="form-group mb-3">
							<label class="label" for="password">Password</label>
						<input type="password" name="TFpassword" class="form-control" id="password" placeholder="Password" required>
						</div>
						<div class="form-group">
							<button type="submit" target="_self" class="form-control btn btn-primary rounded submit px-3">Sign In</button>
						</div>
		            	<div class="form-group d-md-flex">
		            	<div class="w-50 text-left">
			            	<label class="checkbox-wrap checkbox-primary mb-0">Remember Me
									  <input type="checkbox" checked>
									  <span class="checkmark"></span>
										</label>
									</div>
									<div class="w-50 text-md-right">
										<a href="#">Forgot Password</a>
									</div>
		            	</div>

							<?php
								if (isset($_POST['TFusername']))
								{
									if (isset($_POST['TFpassword']))
									{
										// start checking here, and move to webpage
										$username = $_POST['TFusername'];
										$userpw = $_POST['TFpassword'];

										$conn = connect_to_db();
							
										$stmt = $conn->prepare("SELECT * FROM login WHERE username = ? AND password = ?");
										$stmt->bind_param("ss", $username, $userpw);
										$stmt->execute();  // execute the query
										$result = $stmt->get_result();   // get results and store into $result

										if ($result->num_rows > 0)   // a valid result returns only if username and password both match
										{
											// User account found, get usertype
											$row = $result->fetch_assoc();   
											
											switch ($row['usertype'])   // password matches
											{
												/// NOTE: THE DATABASE'S LOGIN TABLE HAS A CONSTRAINT (chk_usertype) THAT ENSURES A USER MUST BE ONLY ONE OF THE FOUR TYPES BELOW.
												case "Admin": 
													echo "<script> window.location.href = \"./HTML/adminDash/examples/dashboard.html\"; </script>";
													break;
												case "Customer":
													echo "<script> window.location.href = \"./HTML/Customer Dashboard/examples/dashboard.html\"; </script>";
													break;
												case "RelManager":
													echo "<script> window.location.href = \"./HTML/RelationShipManager/examples/dashboard.html\"; </script>";
													break;
												case "Head":
													echo "<script> window.location.href = \"./HTML/HedOfSettlement/examples/dashboard.html\"; </script>";
													break;
											}
										}
										else
											echo "<script> alert(\"Enter a valid password!\");</script>";
									}
									else
									{
										echo "<script> alert(\"Enter a valid password!\");</script>";
									}
								}
							?>
		          </form>
		          <p class="text-center">Not a member? <a data-toggle="tab" href="./signUpForm/signup.html">Sign Up</a></p>
		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>


	<!-- Overhaul (Abdullah):  The problem is that we can't figure out how to send information about the user who logged in using the javascript, so I figured out a solution by using PHP+MySQL. 

	Hence the following changes:  1) Remove onClick action and all calls to `validate()`, (I suppose there will be use for javascript navigation in other pages but its not necessary here.)
		2) Introduction of php field "name"s and <form> element to redirect form data to login verifier (login.php), which will then move user to corresponding page.


			NOTE: some html files have to be renamed to .php, this will inevitably break navbar so pls fix
	-->
	
	<script src="../login-form-14/js/bootstrap.min.js"></script>
  	<script src="../login-form-14/js/jquery.min.js"></script>
  	<script src="../login-form-14/js/main.js"></script>
  	<script src="../login-form-14/js/popper.js"></script>

	</body>
</html>

