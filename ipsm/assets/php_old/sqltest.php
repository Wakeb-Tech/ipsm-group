<?php
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "ipsm";

  $conn = new mysqli($servername, $username, $password, $dbname);
  $sql;
  
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }

  $sql = "SELECT MONTH,
    SUM(ANGRY) ANGRY,
    SUM(DISGUST) DISGUST,
    SUM(HAPPY) HAPPY,
    SUM(NEUTRAL) NEUTRAL,
    SUM(SAD) SAD,
    SUM(SURPRISE) SURPRISE,
    SUM(FEAR) FEAR,
    SUM(PEOPLE) PEOPLE
  FROM 
    INFORMATION
  GROUP BY
    MONTH";

  $result = $conn->query($sql);

  $data = '';


  if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {

      $data = $data . '{
          "month":'.$row['MONTH'].',
          "angry":'.$row['ANGRY'].',
          "disgust":'.$row['DISGUST'].',
          "happy":'.$row['HAPPY'].',
          "neutral":'.$row['NEUTRAL'].',
          "sad":'.$row['SAD'].',
          "surprise":'.$row['SURPRISE'].',
          "fear":'.$row['FEAR'].',
          "people":'.$row['PEOPLE'].'
        },';
    }
  } else {
    // echo "0 results";
  }

  echo '"months:"['.$data.']';

  $conn->close();
