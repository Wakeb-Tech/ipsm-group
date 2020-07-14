<?php

$query = "";

for ($i=0; $i < 700 ; $i++) { 
  $month = rand(1,12);
  $day = rand(1,30);
  $hour = rand(0,23);
  $angry = rand(0,16);
  $disgust = rand(0,16);
  $happy = rand(0,16);
  $neutral = rand(0,16);
  $sad = rand(0,16);
  $surprise = rand(0,16);
  $fear = rand(0,16);
  $people = rand(40,80);

  $query = $query . "($month, $day, $hour, $angry, $disgust, $happy, $neutral, $sad, $surprise, $fear, $people),<br>";

  
}

echo $query; 