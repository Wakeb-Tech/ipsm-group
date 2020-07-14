<?php

$json = $_POST['json'];

// error_reporting(E_ERROR | E_PARSE);
$url = "http://127.0.0.2:8888/snap_a_signal";

function httpPost($url, $data)
{
  $curl = curl_init($url);
  curl_setopt($curl, CURLOPT_POST, true);
  curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
  $response = curl_exec($curl);
  curl_close($curl);
  return $response;
}


echo httpPost($url, $json);