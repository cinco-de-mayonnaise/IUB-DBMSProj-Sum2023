<?php
 

 
$link=mysqli_connect("localhost","root","");
mysqli_select_db($link,"lankabangla01");

$test=array();

$count=0;
$res=mysqli_query($link,"SELECT COUNT(c.customerId) AS N,branchName
FROM  customer_info c, bank_info b
WHERE b.bankId=c.bankId 
GROUP By branchName;");
while($row=mysqli_fetch_array($res))
{
	$test[$count]["label"]=$row["branchName"];
	$test[$count]["y"]=$row["N"];
	$count=$count+1;
}

?>
<!DOCTYPE HTML>
<html>
<head>
<script>
window.onload = function() {
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title:{
<<<<<<< HEAD
		text: "Number of BO A/C holders achieved by each Customer Relationship Manager in a Branch (Bar Chart)"
=======
		text: "Number of BO A/C holders per Branch (Bar Chart)"
>>>>>>> 10a6d7fb3149e9669f232c87e692b8088a3ed294
	},
	axisY: {
		title: "Number of customers",
		includeZero: true,
		prefix: "",
		suffix:  ""
	},
	data: [{
		type: "column",
		yValueFormatString: "#,##0",
		indexLabel: "{y}",
		indexLabelPlacement: "inside",
		indexLabelFontWeight: "bolder",
		indexLabelFontColor: "white",
		dataPoints: <?php echo json_encode($test, JSON_NUMERIC_CHECK); ?>
	}]
});
chart.render();
 
}
</script>
</head>
<body>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://cdn.canvasjs.com/canvasjs.min.js"></script>
</body>
</html>          