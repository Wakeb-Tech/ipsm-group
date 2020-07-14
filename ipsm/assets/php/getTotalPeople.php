<?php

  $conn =  require "databaseConnection.php";

  if ($conn->connect_error) {
    die("Database Connection failed");
  }

  $flag = $_POST['flag'];
  $year = $_POST['year'];
  $month = $_POST['month'];
  $week = $_POST['week'];
  $day = $_POST['day'];

  $people = '';
  $sql = '';

   if ($flag == "year") {
    if ($year == "all") {
           $sql = "SELECT YEAR, SUM(PEOPLE) PEOPLE FROM INFORMATION GROUP BY YEAR ORDER BY YEAR ASC";
    }else{
           $sql = "SELECT MONTH, SUM(PEOPLE) PEOPLE FROM INFORMATION WHERE YEAR = $year GROUP BY MONTH ORDER BY MONTH ASC";
    }
  }
  elseif ($flag == "month") {
    if ($month == "all") {
      $sql = "SELECT MONTH, SUM(PEOPLE) PEOPLE FROM INFORMATION GROUP BY MONTH ORDER BY MONTH ASC";
    }else{
      $sql = "SELECT DAY, SUM(PEOPLE) PEOPLE FROM INFORMATION WHERE MONTH = $month GROUP BY DAY ORDER BY DAY ASC";
    }
  }elseif ($flag == "week") { 
    if ($week == "all") {
      $sql = "SELECT WEEK, SUM(PEOPLE) PEOPLE FROM INFORMATION WHERE MONTH = $month GROUP BY WEEK ORDER BY WEEK ASC";
    }else{
      $sql = "SELECT DAY, SUM(PEOPLE) PEOPLE FROM INFORMATION WHERE WEEK = $week AND MONTH = $month GROUP BY DAY ORDER BY DAY ASC";
    }
  }elseif ($flag == "day") {
    if ($day == "all") {
      $sql = "SELECT DAY, SUM(PEOPLE) PEOPLE FROM INFORMATION WHERE MONTH = $month GROUP BY DAY ORDER BY DAY ASC";
    }else{
      $sql = "SELECT HOUR, PEOPLE FROM INFORMATION WHERE MONTH = $month AND day = $day ORDER BY HOUR ASC";
    }
  }

  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
    $count = 0;
    while($row = $result->fetch_assoc()) {
      $count++;
      if ($flag == "year") {
        if ($year == "all") {
          if ($count != $result->num_rows) {
            $people = $people . '{"time": '.$row['YEAR'].', "people":'.$row['PEOPLE'].'},';
          }else{
            $people = $people . '{"time": '.$row['YEAR'].', "people":'.$row['PEOPLE'].'}';
          }
        }else{
          if ($count != $result->num_rows) {
            $people = $people . '{"time": '.$row['MONTH'].', "people":'.$row['PEOPLE'].'},';
          }else{
            $people = $people . '{"time": '.$row['MONTH'].', "people":'.$row['PEOPLE'].'}';
          }
        }
      }
      elseif ($flag == "month") {
        if ($month == "all") {
          if ($count != $result->num_rows) {
            $people = $people . '{"time": '.$row['MONTH'].', "people":'.$row['PEOPLE'].'},';
          }else{
            $people = $people . '{"time": '.$row['MONTH'].', "people":'.$row['PEOPLE'].'}';
          }
        }else{
          if ($count != $result->num_rows) {
            $people = $people . '{"time": '.$row['DAY'].', "people":'.$row['PEOPLE'].'},';
          }else{
            $people = $people . '{"time": '.$row['DAY'].', "people":'.$row['PEOPLE'].'}';
          }
        }
      }elseif ($flag == "week") {
        if ($week == "all") {
          if ($count != $result->num_rows) {
            $people = $people . '{"time": '.$row['WEEK'].', "people":'.$row['PEOPLE'].'},';
          }else{
            $people = $people . '{"time": '.$row['WEEK'].', "people":'.$row['PEOPLE'].'}';
          }
        }else{
          if ($count != $result->num_rows) {
            $people = $people . '{"time": '.$row['DAY'].', "people":'.$row['PEOPLE'].'},';
          }else{
            $people = $people . '{"time": '.$row['DAY'].', "people":'.$row['PEOPLE'].'}';
          }
        }
      }elseif ($flag == "day") {
        if ($day == "all") {
          if ($count != $result->num_rows) {
            $people = $people . '{"time": '.$row['DAY'].', "people":'.$row['PEOPLE'].'},';
          }else{
            $people = $people . '{"time": '.$row['DAY'].', "people":'.$row['PEOPLE'].'}';
          }
        }else{
          if ($count != $result->num_rows) {
            $people = $people . '{"time": '.$row['HOUR'].', "people":'.$row['PEOPLE'].'},';
          }else{
            $people = $people . '{"time": '.$row['HOUR'].', "people":'.$row['PEOPLE'].'}';
          }
        }
      }
    }
    echo '{"people": ['.$people.']}';
  } else {
    echo '{"people": [{ "time": 0, "people": 0}] }';
    // echo $conn->error;
  } 
  
  $conn->close();
