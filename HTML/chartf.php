<?php
 

 
$link=mysqli_connect("localhost","root","");
mysqli_select_db($link,"langkabanglatest01");

$test=array();

$count=0;
$res=mysqli_query($link,"SELECT COUNT(customerId) AS N,YEAR(accOpeningDate) AS Y 
FROM bo_account 
GROUP BY
    YEAR(accOpeningDate)
ORDER BY
    N;");
while($row=mysqli_fetch_array($res))
{
	$test[$count]["label"]=$row["Y"];
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
	title: {
		text: "chart name 6"
	},
	axisY: {
		title: "Number of Push-ups"
	},
	data: [{
		type: "line",
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