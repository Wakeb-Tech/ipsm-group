<?php

	$conn =  require "databaseConnection.php";

	$year = $_POST["year"];
	$month = $_POST["month"];
	$week = $_POST["week"];
	$day = $_POST["day"];
	$hour = $_POST["hour"];

	$angry = $_POST["angry"];
	$disgust = $_POST["disgust"];
	$happy = $_POST["happy"];
	$neutral = $_POST["neutral"];
	$sad = $_POST["sad"];
	$surprise = $_POST["surprise"];
	$fear = $_POST["fear"];
	$people = $_POST["people"];

	$sql = "INSERT INTO INFORMATION (YEAR, MONTH, DAY, WEEK, HOUR, ANGRY, DISGUST, HAPPY, NEUTRAL, SAD, SURPRISE, FEAR, PEOPLE)
	VALUES ('$year','$month', $day, $week, $hour, $angry, $disgust, $happy, $neutral, $sad, $surprise, $fear, $people)";

	if ($conn->query($sql)) {
		echo "Data saved successfully to database";
	} else {
		// echo "Error: " . $sql . "<br>" . mysqli_error($conn);
	}

	$conn->close();