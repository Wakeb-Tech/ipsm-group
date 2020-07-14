<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ipsm";

$mysql_conn = new mysqli($servername, $username, $password, $dbname);
if ($mysql_conn->connect_error) {
    // die("Connection failed: " . $conn->connect_error);
    die("Connection failed");
}else{
  return $mysql_conn;
}