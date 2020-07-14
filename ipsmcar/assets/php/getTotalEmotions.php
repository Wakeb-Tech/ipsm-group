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

  $pres = '';
  $sql = '';
  if ($flag == "year") {
    if ($year == "all") {
      $sql = "SELECT YEAR, MONTH, WEEK, DAY, HOUR, SUM(ANGRY) ANGRY, SUM(DISGUST) DISGUST, SUM(HAPPY) HAPPY, SUM(NEUTRAL) NEUTRAL, SUM(SAD) SAD,
      SUM(SURPRISE) SURPRISE, SUM(FEAR) FEAR FROM INFORMATION GROUP BY YEAR ORDER BY YEAR ASC";
    }else{
      $sql = "SELECT YEAR, MONTH, WEEK, DAY, HOUR, SUM(ANGRY) ANGRY, SUM(DISGUST) DISGUST, SUM(HAPPY) HAPPY, SUM(NEUTRAL) NEUTRAL, SUM(SAD) SAD,
      SUM(SURPRISE) SURPRISE, SUM(FEAR) FEAR FROM INFORMATION WHERE YEAR = $year GROUP BY MONTH ORDER BY MONTH ASC";
    }
  }

  elseif ($flag == "month") {
    if ($month == "all") {
      $sql = "SELECT YEAR, MONTH, WEEK, DAY, HOUR, SUM(ANGRY) ANGRY, SUM(DISGUST) DISGUST, SUM(HAPPY) HAPPY, SUM(NEUTRAL) NEUTRAL, SUM(SAD) SAD,
      SUM(SURPRISE) SURPRISE, SUM(FEAR) FEAR FROM INFORMATION WHERE YEAR = $year GROUP BY MONTH ORDER BY MONTH ASC";
    }else{
      $sql = "SELECT YEAR, MONTH, WEEK, DAY, HOUR, SUM(ANGRY) ANGRY, SUM(DISGUST) DISGUST, SUM(HAPPY) HAPPY, SUM(NEUTRAL) NEUTRAL, SUM(SAD) SAD,
      SUM(SURPRISE) SURPRISE, SUM(FEAR) FEAR FROM INFORMATION WHERE YEAR = $year AND MONTH = $month GROUP BY DAY ORDER BY DAY ASC";
    }
  }elseif ($flag == "week") {
    if ($week == "all") {
      $sql = "SELECT YEAR, MONTH, WEEK, DAY, HOUR, SUM(ANGRY) ANGRY, SUM(DISGUST) DISGUST, SUM(HAPPY) HAPPY, SUM(NEUTRAL) NEUTRAL, SUM(SAD) SAD,
      SUM(SURPRISE) SURPRISE, SUM(FEAR) FEAR FROM INFORMATION WHERE YEAR = $year AND MONTH = $month GROUP BY WEEK ORDER BY WEEK ASC";
    }else{
      $sql = "SELECT YEAR, MONTH, WEEK, DAY, HOUR, SUM(ANGRY) ANGRY, SUM(DISGUST) DISGUST, SUM(HAPPY) HAPPY, SUM(NEUTRAL) NEUTRAL, SUM(SAD) SAD,
      SUM(SURPRISE) SURPRISE, SUM(FEAR) FEAR FROM INFORMATION WHERE YEAR = $year AND WEEK = $week AND MONTH = $month GROUP BY DAY ORDER BY DAY ASC";
    }
  }elseif ($flag == "day") {
    if ($day == "all") {
      $sql = "SELECT YEAR, MONTH, WEEK, DAY, HOUR, SUM(ANGRY) ANGRY, SUM(DISGUST) DISGUST, SUM(HAPPY) HAPPY, SUM(NEUTRAL) NEUTRAL, SUM(SAD) SAD,
      SUM(SURPRISE) SURPRISE, SUM(FEAR) FEAR FROM INFORMATION WHERE YEAR = $year AND MONTH = $month GROUP BY DAY ORDER BY DAY ASC";
    }else{
      $sql = "SELECT YEAR, MONTH, WEEK, DAY, HOUR, SUM(ANGRY) ANGRY, SUM(DISGUST) DISGUST, SUM(HAPPY) HAPPY, SUM(NEUTRAL) NEUTRAL, SUM(SAD) SAD,
      SUM(SURPRISE) SURPRISE, SUM(FEAR) FEAR FROM INFORMATION WHERE YEAR = $year AND MONTH = $month AND DAY = $day GROUP BY HOUR ORDER BY HOUR ASC";
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
            $pres = $pres . '{
              "time": '.$row['YEAR'].',
              "angry": '.$row['ANGRY'].',
              "disgust": '.$row['DISGUST'].',
              "happy": '.$row['HAPPY'].',
              "neutral": '.$row['NEUTRAL'].',
              "sad": '.$row['SAD'].',
              "surprise": '.$row['SURPRISE'].',
              "fear": '.$row['FEAR'].'
            },';
          }else{
            $pres = $pres . '{
              "time": '.$row['YEAR'].',
              "angry": '.$row['ANGRY'].',
              "disgust": '.$row['DISGUST'].',
              "happy": '.$row['HAPPY'].',
              "neutral": '.$row['NEUTRAL'].',
              "sad": '.$row['SAD'].',
              "surprise": '.$row['SURPRISE'].',
              "fear": '.$row['FEAR'].'
            }';
          }
        }else{
          if ($count != $result->num_rows) {
            $pres = $pres . '{
              "time": '.$row['MONTH'].',
              "angry": '.$row['ANGRY'].',
              "disgust": '.$row['DISGUST'].',
              "happy": '.$row['HAPPY'].',
              "neutral": '.$row['NEUTRAL'].',
              "sad": '.$row['SAD'].',
              "surprise": '.$row['SURPRISE'].',
              "fear": '.$row['FEAR'].'
            },';
          }else{
            $pres = $pres . '{
              "time": '.$row['MONTH'].',
              "angry": '.$row['ANGRY'].',
              "disgust": '.$row['DISGUST'].',
              "happy": '.$row['HAPPY'].',
              "neutral": '.$row['NEUTRAL'].',
              "sad": '.$row['SAD'].',
              "surprise": '.$row['SURPRISE'].',
              "fear": '.$row['FEAR'].'
            }';
          }
        }
      }
      elseif ($flag == "month") {
        if ($month == "all") {
          if ($count != $result->num_rows) {
            $pres = $pres . '{
              "time": '.$row['MONTH'].',
              "angry": '.$row['ANGRY'].',
              "disgust": '.$row['DISGUST'].',
              "happy": '.$row['HAPPY'].',
              "neutral": '.$row['NEUTRAL'].',
              "sad": '.$row['SAD'].',
              "surprise": '.$row['SURPRISE'].',
              "fear": '.$row['FEAR'].'
            },';
          }else{
            $pres = $pres . '{
              "time": '.$row['MONTH'].',
              "angry": '.$row['ANGRY'].',
              "disgust": '.$row['DISGUST'].',
              "happy": '.$row['HAPPY'].',
              "neutral": '.$row['NEUTRAL'].',
              "sad": '.$row['SAD'].',
              "surprise": '.$row['SURPRISE'].',
              "fear": '.$row['FEAR'].'
            }';
          }
        }else{
          if ($count != $result->num_rows) {
            $pres = $pres . '{
              "time": '.$row['DAY'].',
              "angry": '.$row['ANGRY'].',
              "disgust": '.$row['DISGUST'].',
              "happy": '.$row['HAPPY'].',
              "neutral": '.$row['NEUTRAL'].',
              "sad": '.$row['SAD'].',
              "surprise": '.$row['SURPRISE'].',
              "fear": '.$row['FEAR'].'
            },';
          }else{
            $pres = $pres . '{
              "time": '.$row['DAY'].',
              "angry": '.$row['ANGRY'].',
              "disgust": '.$row['DISGUST'].',
              "happy": '.$row['HAPPY'].',
              "neutral": '.$row['NEUTRAL'].',
              "sad": '.$row['SAD'].',
              "surprise": '.$row['SURPRISE'].',
              "fear": '.$row['FEAR'].'
            }';
          }
        }
      }elseif ($flag == "week") {
        if ($week == "all") {
          if ($count != $result->num_rows) {
            $pres = $pres . '{
              "time": '.$row['WEEK'].',
              "angry": '.$row['ANGRY'].',
              "disgust": '.$row['DISGUST'].',
              "happy": '.$row['HAPPY'].',
              "neutral": '.$row['NEUTRAL'].',
              "sad": '.$row['SAD'].',
              "surprise": '.$row['SURPRISE'].',
              "fear": '.$row['FEAR'].'
            },';
          }else{
            $pres = $pres . '{
              "time": '.$row['WEEK'].',
              "angry": '.$row['ANGRY'].',
              "disgust": '.$row['DISGUST'].',
              "happy": '.$row['HAPPY'].',
              "neutral": '.$row['NEUTRAL'].',
              "sad": '.$row['SAD'].',
              "surprise": '.$row['SURPRISE'].',
              "fear": '.$row['FEAR'].'
            },';
          }
        }else{
          if ($count != $result->num_rows) {
            $pres = $pres . '{
              "time": '.$row['DAY'].',
              "angry": '.$row['ANGRY'].',
              "disgust": '.$row['DISGUST'].',
              "happy": '.$row['HAPPY'].',
              "neutral": '.$row['NEUTRAL'].',
              "sad": '.$row['SAD'].',
              "surprise": '.$row['SURPRISE'].',
              "fear": '.$row['FEAR'].'
            },';
          }else{
            $pres = $pres . '{
              "time": '.$row['DAY'].',
              "angry": '.$row['ANGRY'].',
              "disgust": '.$row['DISGUST'].',
              "happy": '.$row['HAPPY'].',
              "neutral": '.$row['NEUTRAL'].',
              "sad": '.$row['SAD'].',
              "surprise": '.$row['SURPRISE'].',
              "fear": '.$row['FEAR'].'
            }';
          }
        }
      }elseif ($flag == "day") {
        if ($day == "all") {
          if ($count != $result->num_rows) {
           $pres = $pres . '{
              "time": '.$row['DAY'].',
              "angry": '.$row['ANGRY'].',
              "disgust": '.$row['DISGUST'].',
              "happy": '.$row['HAPPY'].',
              "neutral": '.$row['NEUTRAL'].',
              "sad": '.$row['SAD'].',
              "surprise": '.$row['SURPRISE'].',
              "fear": '.$row['FEAR'].'
            },';
          }else{
            $pres = $pres . '{
              "time": '.$row['DAY'].',
              "angry": '.$row['ANGRY'].',
              "disgust": '.$row['DISGUST'].',
              "happy": '.$row['HAPPY'].',
              "neutral": '.$row['NEUTRAL'].',
              "sad": '.$row['SAD'].',
              "surprise": '.$row['SURPRISE'].',
              "fear": '.$row['FEAR'].'
            }';
          }
        }else{
          if ($count != $result->num_rows) {
            $pres = $pres . '{
              "time": '.$row['HOUR'].',
              "angry": '.$row['ANGRY'].',
              "disgust": '.$row['DISGUST'].',
              "happy": '.$row['HAPPY'].',
              "neutral": '.$row['NEUTRAL'].',
              "sad": '.$row['SAD'].',
              "surprise": '.$row['SURPRISE'].',
              "fear": '.$row['FEAR'].'
            },';
          }else{
            $pres = $pres . '{
              "time": '.$row['HOUR'].',
              "angry": '.$row['ANGRY'].',
              "disgust": '.$row['DISGUST'].',
              "happy": '.$row['HAPPY'].',
              "neutral": '.$row['NEUTRAL'].',
              "sad": '.$row['SAD'].',
              "surprise": '.$row['SURPRISE'].',
              "fear": '.$row['FEAR'].'
            }';
          }
        }
      }
    }
    echo '{"pres": ['.$pres.']}';
  } else {
    echo '{"pres": [{
              "time": 0,
              "angry": 0,
              "disgust": 0,
              "happy": 0,
              "neutral": 0,
              "sad": 0,
              "surprise": 0,
              "fear": 0
            }';
    // echo $conn->error;
  } 
  
  $conn->close();
