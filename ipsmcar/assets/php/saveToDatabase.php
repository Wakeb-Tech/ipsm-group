<?php

	$conn =  require "databaseConnection.php";

	$year = $_POST["year"];
	$month = $_POST["month"];
	$week = $_POST["week"];
	$day = $_POST["day"];
	$hour = $_POST["hour"];
	$count = $_POST["count"];
	

	$sql = "INSERT INTO INFORMATION (YEAR, MONTH, DAY, WEEK, HOUR, count)
	VALUES ('$year','$month', $day, $week, $hour, $count)";

	if ($conn->query($sql)) {
		echo "Data saved successfully to database";
	} else {
		// echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}

	$conn->close();