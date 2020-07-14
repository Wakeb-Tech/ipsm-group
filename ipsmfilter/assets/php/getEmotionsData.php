<?php

  $conn =  require "databaseConnection.php";

  if ($conn->connect_error) {
    die("Database Connection failed");
  }

  $flag = $_POST['flag'];
  $month = $_POST['month'];
  $year = $_POST['year'];
  $week = $_POST['week'];
  $day = $_POST['day'];

  $sql = '';
  $pres = '';


 if ($flag == "year") {
    if ($year == "all") {
      $sql = "SELECT YEAR, SUM(ANGRY) ANGRY, SUM(DISGUST) DISGUST, SUM(HAPPY) HAPPY, SUM(NEUTRAL) NEUTRAL, SUM(SAD) SAD,
      SUM(SURPRISE) SURPRISE, SUM(FEAR) FEAR, SUM(PEOPLE) PEOPLE FROM INFORMATION";
    }else{
      $sql = "SELECT YEAR, SUM(ANGRY) ANGRY, SUM(DISGUST) DISGUST, SUM(HAPPY) HAPPY, SUM(NEUTRAL) NEUTRAL, SUM(SAD) SAD,
      SUM(SURPRISE) SURPRISE, SUM(FEAR) FEAR, SUM(PEOPLE) PEOPLE FROM INFORMATION WHERE YEAR = $year";
    }
  }

  elseif ($flag == "month") {
    if ($month == "all") {
      $sql = "SELECT YEAR, MONTH, SUM(ANGRY) ANGRY, SUM(DISGUST) DISGUST, SUM(HAPPY) HAPPY, SUM(NEUTRAL) NEUTRAL, SUM(SAD) SAD,
      SUM(SURPRISE) SURPRISE, SUM(FEAR) FEAR, SUM(PEOPLE) PEOPLE FROM INFORMATION";
    }else{
      $sql = "SELECT YEAR, MONTH, SUM(ANGRY) ANGRY, SUM(DISGUST) DISGUST, SUM(HAPPY) HAPPY, SUM(NEUTRAL) NEUTRAL, SUM(SAD) SAD,
      SUM(SURPRISE) SURPRISE, SUM(FEAR) FEAR, SUM(PEOPLE) PEOPLE FROM INFORMATION WHERE YEAR = $year AND MONTH = $month";
    }
  }elseif ($flag == "week") {
    if ($week == "all") {
      $sql = "SELECT YEAR, MONTH, SUM(ANGRY) ANGRY, SUM(DISGUST) DISGUST, SUM(HAPPY) HAPPY, SUM(NEUTRAL) NEUTRAL, SUM(SAD) SAD,
      SUM(SURPRISE) SURPRISE, SUM(FEAR) FEAR, SUM(PEOPLE) PEOPLE FROM INFORMATION WHERE YEAR = $year AND MONTH = $month";
    }else{
      $sql = "SELECT YEAR, MONTH, WEEK, SUM(ANGRY) ANGRY, SUM(DISGUST) DISGUST, SUM(HAPPY) HAPPY, SUM(NEUTRAL) NEUTRAL, SUM(SAD) SAD,
      SUM(SURPRISE) SURPRISE, SUM(FEAR) FEAR, SUM(PEOPLE) PEOPLE FROM INFORMATION WHERE YEAR = $year AND MONTH = $month AND WEEK = $week";
    }
  }elseif ($flag == "day") {
    if ($day == "all") {
      $sql = "SELECT YEAR, MONTH, DAY, SUM(ANGRY) ANGRY, SUM(DISGUST) DISGUST, SUM(HAPPY) HAPPY, SUM(NEUTRAL) NEUTRAL, SUM(SAD) SAD,
      SUM(SURPRISE) SURPRISE, SUM(FEAR) FEAR, SUM(PEOPLE) PEOPLE FROM INFORMATION WHERE YEAR = $year AND MONTH = $month";
    }else{
      $sql = "SELECT YEAR, MONTH, DAY, SUM(ANGRY) ANGRY, SUM(DISGUST) DISGUST, SUM(HAPPY) HAPPY, SUM(NEUTRAL) NEUTRAL, SUM(SAD) SAD,
      SUM(SURPRISE) SURPRISE, SUM(FEAR) FEAR, SUM(PEOPLE) PEOPLE FROM INFORMATION WHERE YEAR = $year AND MONTH = $month AND DAY = $day";
    }
  }

  $result = $conn->query($sql);
    if ($result->num_rows > 0) {
      $count = 0;
      while($row = $result->fetch_assoc()) {

        if ($row['YEAR'] != null) {

          $pres = $pres . '[
            {"emotion": "angry", "value": '.$row['ANGRY'].'},
            {"emotion": "disgust", "value": '.$row['DISGUST'].'},
            {"emotion": "happy", "value": '.$row['HAPPY'].'},
            {"emotion": "neutral", "value": '.$row['NEUTRAL'].'},
            {"emotion": "sad", "value": '.$row['SAD'].'},
            {"emotion": "surprise", "value": '.$row['SURPRISE'].'},
            {"emotion": "fear", "value": '.$row['FEAR'].'},
            {"emotion": "people", "value": '.$row['PEOPLE'].'}]';
        }else{
          goto a;
        }
      }
      echo '{"pres": '.$pres.'}';
    } else {
      a:
      echo '{"pres": [{ "emotion": 0, "value": 0}]}';
    }
  

  
  $conn->close();
