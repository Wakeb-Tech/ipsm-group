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

  $people = '';
  $emotions = '';

  
  if ($result->num_rows > 0) {
    $count = 0;

    while($row = $result->fetch_assoc()) {
      $count++;
      if ($count != $result->num_rows) {
        $people = $people . '{
            "month":'.$row['MONTH'].',
            "people":'.$row['PEOPLE'].'
          },';

          $emotions = $emotions . '{
            "month":'.$row['MONTH'].',
            "emotion": "angry",
            "value":'.$row['ANGRY'].'
          },{
            "month":'.$row['MONTH'].',
            "emotion": "disgust",
            "value":'.$row['DISGUST'].'
          },{
            "month":'.$row['MONTH'].',
            "emotion": "happy",
            "value":'.$row['HAPPY'].'
          },{
            "month":'.$row['MONTH'].',
            "emotion": "neutral",
            "value":'.$row['NEUTRAL'].'
          },{
            "month":'.$row['MONTH'].',
            "emotion": "sad",
            "value":'.$row['SAD'].'
          },{
            "month":'.$row['MONTH'].',
            "emotion": "surprise",
            "value":'.$row['SURPRISE'].'
          },{
            "month":'.$row['MONTH'].',
            "emotion": "fear",
            "value":'.$row['FEAR'].'
          },';
      }else{
         $people = $people . '{
            "month":'.$row['MONTH'].',
            "people":'.$row['PEOPLE'].'
          }';

        $emotions = $emotions . '{
            "month":'.$row['MONTH'].',
            "emotion": "angry",
            "value":'.$row['ANGRY'].'
          },{
            "month":'.$row['MONTH'].',
            "emotion": "disgust",
            "value":'.$row['DISGUST'].'
          },{
            "month":'.$row['MONTH'].',
            "emotion": "happy",
            "value":'.$row['HAPPY'].'
          },{
            "month":'.$row['MONTH'].',
            "emotion": "neutral",
            "value":'.$row['NEUTRAL'].'
          },{
            "month":'.$row['MONTH'].',
            "emotion": "sad",
            "value":'.$row['SAD'].'
          },{
            "month":'.$row['MONTH'].',
            "emotion": "surprise",
            "value":'.$row['SURPRISE'].'
          },{
            "month":'.$row['MONTH'].',
            "emotion": "fear",
            "value":'.$row['FEAR'].'
          }';
      }
    }

  } else {
    // echo "0 results";
  }

  echo '{
    "people": ['.$people.'],
    "emotions": ['.$emotions.']
  }';

  $conn->close();
