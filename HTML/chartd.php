<?php
 

 
$link=mysqli_connect("localhost","root","");
mysqli_select_db($link,"langkabanglatest01");

$test=array();

$count=0;
$res=mysqli_query($link,"SELECT COUNT(c.customerId) AS N,gender
FROM bo_account b, customer_info c
WHERE b.customerId=c.customerId 
GROUP By gender;");
while($row=mysqli_fetch_array($res))
{
	$test[$count]["label"]=$row["gender"];
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
            theme: "light2",
            animationEnabled: true,
            title: {
                text: "chart name 4"
            },
            data: [{
                type: "pie",
                indexLabel: "{y}",
                yValueFormatString: "#,##0.00\"%\"",
                indexLabelPlacement: "inside",
                indexLabelFontColor: "#36454F",
                indexLabelFontSize: 18,
                indexLabelFontWeight: "bolder",
                showInLegend: true,
                legendText: "{label}",
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