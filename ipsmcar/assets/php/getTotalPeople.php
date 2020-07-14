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

  $count = '';
  $sql = '';

   if ($flag == "year") {
    if ($year == "all") {
           $sql = "SELECT YEAR, SUM(count) count FROM INFORMATION GROUP BY YEAR ORDER BY YEAR ASC";
    }else{
           $sql = "SELECT MONTH, SUM(count) count FROM INFORMATION WHERE YEAR = $year GROUP BY MONTH ORDER BY MONTH ASC";
    }
  }
  elseif ($flag == "month") {
    if ($month == "all") {
      $sql = "SELECT MONTH, SUM(count) count FROM INFORMATION GROUP BY MONTH ORDER BY MONTH ASC";
    }else{
      $sql = "SELECT DAY, SUM(count) count FROM INFORMATION WHERE MONTH = $month GROUP BY DAY ORDER BY DAY ASC";
    }
  }elseif ($flag == "week") { 
    if ($week == "all") {
      $sql = "SELECT WEEK, SUM(count) count FROM INFORMATION WHERE MONTH = $month GROUP BY WEEK ORDER BY WEEK ASC";
    }else{
      $sql = "SELECT DAY, SUM(count) count FROM INFORMATION WHERE WEEK = $week AND MONTH = $month GROUP BY DAY ORDER BY DAY ASC";
    }
  }elseif ($flag == "day") {
    if ($day == "all") {
      $sql = "SELECT DAY, SUM(count) count FROM INFORMATION WHERE MONTH = $month GROUP BY DAY ORDER BY DAY ASC";
    }else{
      $sql = "SELECT HOUR, count FROM INFORMATION WHERE MONTH = $month AND day = $day ORDER BY HOUR ASC";
    }
  }

  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
    $count1 = 0;
    while($row = $result->fetch_assoc()) {
      $count1++;
      if ($flag == "year") {
        if ($year == "all") {
          if ($count1 != $result->num_rows) {
            $count = $count . '{"time": '.$row['YEAR'].', "count":'.$row['count'].'},';
          }else{
            $count = $count . '{"time": '.$row['YEAR'].', "count":'.$row['count'].'}';
          }
        }else{
          if ($count1 != $result->num_rows) {
            $count = $count . '{"time": '.$row['MONTH'].', "count":'.$row['count'].'},';
          }else{
            $count = $count . '{"time": '.$row['MONTH'].', "count":'.$row['count'].'}';
          }
        }
      }
      elseif ($flag == "month") {
        if ($month == "all") {
          if ($count1 != $result->num_rows) {
            $count = $count . '{"time": '.$row['MONTH'].', "count":'.$row['count'].'},';
          }else{
            $count = $count . '{"time": '.$row['MONTH'].', "count":'.$row['count'].'}';
          }
        }else{
          if ($count1 != $result->num_rows) {
            $count = $count . '{"time": '.$row['DAY'].', "count":'.$row['count'].'},';
          }else{
            $count = $count . '{"time": '.$row['DAY'].', "count":'.$row['count'].'}';
          }
        }
      }elseif ($flag == "week") {
        if ($week == "all") {
          if ($count1 != $result->num_rows) {
            $count = $count . '{"time": '.$row['WEEK'].', "count":'.$row['count'].'},';
          }else{
            $count = $count . '{"time": '.$row['WEEK'].', "count":'.$row['count'].'}';
          }
        }else{
          if ($count1 != $result->num_rows) {
            $count = $count . '{"time": '.$row['DAY'].', "count":'.$row['count'].'},';
          }else{
            $count = $count . '{"time": '.$row['DAY'].', "count":'.$row['count'].'}';
          }
        }
      }elseif ($flag == "day") {
        if ($day == "all") {
          if ($count1 != $result->num_rows) {
            $count = $count . '{"time": '.$row['DAY'].', "count":'.$row['count'].'},';
          }else{
            $count = $count . '{"time": '.$row['DAY'].', "count":'.$row['count'].'}';
          }
        }else{
          if ($count1 != $result->num_rows) {
            $count = $count . '{"time": '.$row['HOUR'].', "count":'.$row['count'].'},';
          }else{
            $count = $count . '{"time": '.$row['HOUR'].', "count":'.$row['count'].'}';
          }
        }
      }
    }
    echo '{"count": ['.$count.']}';
  } else {
    echo '{"count": [{ "time": 0, "count": 0}] }';
    // echo $conn->error;
  } 
  
  $conn->close();
