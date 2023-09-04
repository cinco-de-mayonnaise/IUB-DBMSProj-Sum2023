<?php
 
$dataPoints = array( 
	array("y" => 7,"label" => "March" ),
	array("y" => 12,"label" => "April" ),
	array("y" => 28,"label" => "May" ),
	array("y" => 18,"label" => "June" ),
	array("y" => 41,"label" => "July" )
);
 
$link=mysqli_connect("localhost","root","");
mysqli_select_db($link,"chart");

$test=array();

$count=0;
$res=mysqli_query($link,"SELECT COUNT(c.customerId),state
FROM bo_account b, customer_info c, contact_info ci
WHERE b.customerId=c.customerId AND c.contactId=ci.contactId
GROUP By state;");
while($row=mysqli_fetch_array($res))
{
	$test[$count]["label"]=$row["state"];
	$test[$count]["y"]=$row["c.customerId"];
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
		text: "Chart Name"
	},
	axisY: {
		title: "Revenue (in USD)",
		includeZero: true,
		prefix: "$",
		suffix:  "k"
	},
	data: [{
		type: "bar",
		yValueFormatString: "$#,##0K",
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