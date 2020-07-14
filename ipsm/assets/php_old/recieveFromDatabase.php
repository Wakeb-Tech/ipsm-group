<?php
  $flag = $_POST['flag'];
  $month = $_POST['month'];
  $week = $_POST['week'];
  $day = $_POST['day'];
  $hour = $_POST['hour'];
  $json = "";

  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "ipsm";

  $conn = new mysqli($servername, $username, $password, $dbname);
  $sql;
  
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  switch ($flag) {
    case 'month':
      if ($month == 'all') {
        $sql = "SELECT * FROM information";
      }else{
        $sql = "SELECT * FROM information WHERE MONTH = $month";
      }
    break;

    case 'day':
      if ($day == 'all') {
        $sql = "SELECT * FROM information WHERE MONTH = $month";
      }else{
        $sql = "SELECT * FROM information WHERE MONTH = $month AND DAY = $day";
      }
    break;

    case 'hour':
      if ($hour == '24') {
        $sql = "SELECT * FROM information WHERE MONTH = $month AND DAY = $day";
      }else{
        $sql = "SELECT * FROM information WHERE MONTH = $month AND DAY = $day AND HOUR = $hour";
      }
    break;

    case 'week':
      if($week == 'all'){
        $sql = "SELECT * FROM information WHERE MONTH = $month";
      }elseif ($week == 1) {
        $sql = "SELECT * FROM information WHERE MONTH = $month AND DAY >= 1 AND DAY <= 7";
      }elseif ($week == 2) {
        $sql = "SELECT * FROM information WHERE MONTH = $month AND DAY >= 8 AND DAY <= 14";
      }elseif ($week == 3) {
        $sql = "SELECT * FROM information WHERE MONTH = $month AND DAY >= 15 AND DAY <= 21";
      }elseif ($week == 4) {
        $sql = "SELECT * FROM information WHERE MONTH = $month AND DAY >= 22";
      }
    break;
    
    default:
    break;
  }

  $angry = 0;
  $disgust = 0;
  $happy = 0;
  $neutral = 0;
  $sad = 0;
  $surprise = 0;
  $fear = 0;
  $people = 0;

  $result = $conn->query($sql);

  $time_data = '';

  if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {

      $angry = $angry + $row['ANGRY'];
      $disgust = $disgust + $row['DISGUST'];
      $happy = $happy + $row['HAPPY'];
      $neutral = $neutral + $row['NEUTRAL'];
      $sad = $sad + $row['SAD'];
      $surprise = $surprise + $row['SURPRISE'];
      $fear = $fear + $row['FEAR'];
      $people = $people + $row['PEOPLE'];
    }
  } else {
    // echo "0 results";
  }

  $conn->close();

  $data = '{"pres": [{
      "emotion": "angry",
      "value": '.$angry.'
    },
    {
      "emotion": "disgust",
      "value": '.$disgust.'
    },
    {
      "emotion": "happy",
      "value": '.$happy.'
    },
    {
      "emotion": "neutral",
      "value": '.$neutral.'
    },
    {
      "emotion": "sad",
      "value": '.$sad.'
    },
    {
      "emotion": "surprise",
      "value": '.$surprise.'
    },
    {
      "emotion": "fear",
      "value": '.$fear.'
    },
    {
      "emotion": "people",
      "value": '.$people.'
    }]}';

  
  echo $data;

  

  // echo "[$month, $week, $day, $hour, $flag] <br>"; 

  // echo "$angry, $disgust, $happy, $neutral, $sad, $surprise, $fear, $people";
