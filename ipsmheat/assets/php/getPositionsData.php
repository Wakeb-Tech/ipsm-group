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

 
  $sql = '';
  $position = '';

  if ($flag == "year") {
    if($year == "all") {

      $sql = "SELECT SUM(reg1) AS reg1, SUM(reg2) AS reg2 , SUM(reg3) AS reg3 ,SUM(reg4) AS reg4 , SUM(reg5) AS reg5 , SUM(reg6) AS reg6 , SUM(reg7) AS reg7 , SUM(reg8) AS reg8, SUM(reg9) AS reg9 ,SUM(reg10) AS reg10 , SUM(reg11) AS reg11 , SUM(reg12) AS reg12,SUM(reg13) AS reg13, SUM(reg14) AS reg14 , SUM(reg15) AS reg15 , SUM(reg16) AS reg16 , SUM(reg17) AS reg17, SUM(reg18) AS reg18, SUM(reg19) AS reg19 , SUM(reg20) AS reg20 , SUM(reg21) AS reg21 , SUM(reg22) AS reg22 , SUM(reg23) AS reg23 , SUM(reg24) AS reg24 FROM `position` ";
    }else{

      $sql = "SELECT SUM(reg1) AS reg1, SUM(reg2) AS reg2 , SUM(reg3) AS reg3 ,SUM(reg4) AS reg4 , SUM(reg5) AS reg5 , SUM(reg6) AS reg6 , SUM(reg7) AS reg7 , SUM(reg8) AS reg8, SUM(reg9) AS reg9 ,SUM(reg10) AS reg10 , SUM(reg11) AS reg11 , SUM(reg12) AS reg12,SUM(reg13) AS reg13, SUM(reg14) AS reg14 , SUM(reg15) AS reg15 , SUM(reg16) AS reg16 , SUM(reg17) AS reg17, SUM(reg18) AS reg18, SUM(reg19) AS reg19 , SUM(reg20) AS reg20 , SUM(reg21) AS reg21 , SUM(reg22) AS reg22 , SUM(reg23) AS reg23 , SUM(reg24) AS reg24 FROM `position` WHERE YEAR = $year";
    }
   
    
  }
  elseif ($flag == "month") {
    if($month == "all") {

      $sql = "SELECT SUM(reg1) AS reg1, SUM(reg2) AS reg2 , SUM(reg3) AS reg3 ,SUM(reg4) AS reg4 , SUM(reg5) AS reg5 , SUM(reg6) AS reg6 , SUM(reg7) AS reg7 , SUM(reg8) AS reg8, SUM(reg9) AS reg9 ,SUM(reg10) AS reg10 , SUM(reg11) AS reg11 , SUM(reg12) AS reg12,SUM(reg13) AS reg13, SUM(reg14) AS reg14 , SUM(reg15) AS reg15 , SUM(reg16) AS reg16 , SUM(reg17) AS reg17, SUM(reg18) AS reg18, SUM(reg19) AS reg19 , SUM(reg20) AS reg20 , SUM(reg21) AS reg21 , SUM(reg22) AS reg22 , SUM(reg23) AS reg23 , SUM(reg24) AS reg24 FROM `position` WHERE YEAR = $year ";
    }else{

      $sql = "SELECT SUM(reg1) AS reg1, SUM(reg2) AS reg2 , SUM(reg3) AS reg3 ,SUM(reg4) AS reg4 , SUM(reg5) AS reg5 , SUM(reg6) AS reg6 , SUM(reg7) AS reg7 , SUM(reg8) AS reg8, SUM(reg9) AS reg9 ,SUM(reg10) AS reg10 , SUM(reg11) AS reg11 , SUM(reg12) AS reg12,SUM(reg13) AS reg13, SUM(reg14) AS reg14 , SUM(reg15) AS reg15 , SUM(reg16) AS reg16 , SUM(reg17) AS reg17, SUM(reg18) AS reg18, SUM(reg19) AS reg19 , SUM(reg20) AS reg20 , SUM(reg21) AS reg21 , SUM(reg22) AS reg22 , SUM(reg23) AS reg23 , SUM(reg24) AS reg24 FROM `position` WHERE YEAR = $year AND MONTH = $month";
    }

    
  }elseif ($flag == "week") {
     if($week == "all") {

        $sql = "SELECT SUM(reg1) AS reg1, SUM(reg2) AS reg2 , SUM(reg3) AS reg3 ,SUM(reg4) AS reg4 , SUM(reg5) AS reg5 , SUM(reg6) AS reg6 , SUM(reg7) AS reg7 , SUM(reg8) AS reg8, SUM(reg9) AS reg9 ,SUM(reg10) AS reg10 , SUM(reg11) AS reg11 , SUM(reg12) AS reg12,SUM(reg13) AS reg13, SUM(reg14) AS reg14 , SUM(reg15) AS reg15 , SUM(reg16) AS reg16 , SUM(reg17) AS reg17, SUM(reg18) AS reg18, SUM(reg19) AS reg19 , SUM(reg20) AS reg20 , SUM(reg21) AS reg21 , SUM(reg22) AS reg22 , SUM(reg23) AS reg23 , SUM(reg24) AS reg24 FROM `position` WHERE YEAR = $year AND MONTH = $month ";
     }else{

        $sql = "SELECT SUM(reg1) AS reg1, SUM(reg2) AS reg2 , SUM(reg3) AS reg3 ,SUM(reg4) AS reg4 , SUM(reg5) AS reg5 , SUM(reg6) AS reg6 , SUM(reg7) AS reg7 , SUM(reg8) AS reg8, SUM(reg9) AS reg9 ,SUM(reg10) AS reg10 , SUM(reg11) AS reg11 , SUM(reg12) AS reg12,SUM(reg13) AS reg13, SUM(reg14) AS reg14 , SUM(reg15) AS reg15 , SUM(reg16) AS reg16 , SUM(reg17) AS reg17, SUM(reg18) AS reg18, SUM(reg19) AS reg19 , SUM(reg20) AS reg20 , SUM(reg21) AS reg21 , SUM(reg22) AS reg22 , SUM(reg23) AS reg23 , SUM(reg24) AS reg24 FROM `position` WHERE YEAR = $year AND WEEK = $week AND MONTH = $month ";
     }
     
  }elseif ($flag == "day") {
     if($day == "all") {

      $sql = "SELECT SUM(reg1) AS reg1, SUM(reg2) AS reg2 , SUM(reg3) AS reg3 ,SUM(reg4) AS reg4 , SUM(reg5) AS reg5 , SUM(reg6) AS reg6 , SUM(reg7) AS reg7 , SUM(reg8) AS reg8, SUM(reg9) AS reg9 ,SUM(reg10) AS reg10 , SUM(reg11) AS reg11 , SUM(reg12) AS reg12,SUM(reg13) AS reg13, SUM(reg14) AS reg14 , SUM(reg15) AS reg15 , SUM(reg16) AS reg16 , SUM(reg17) AS reg17, SUM(reg18) AS reg18, SUM(reg19) AS reg19 , SUM(reg20) AS reg20 , SUM(reg21) AS reg21 , SUM(reg22) AS reg22 , SUM(reg23) AS reg23 , SUM(reg24) AS reg24 FROM `position` WHERE YEAR = $year AND MONTH = $month";
     }else{

      $sql = "SELECT SUM(reg1) AS reg1, SUM(reg2) AS reg2 , SUM(reg3) AS reg3 ,SUM(reg4) AS reg4 , SUM(reg5) AS reg5 , SUM(reg6) AS reg6 , SUM(reg7) AS reg7 , SUM(reg8) AS reg8, SUM(reg9) AS reg9 ,SUM(reg10) AS reg10 , SUM(reg11) AS reg11 , SUM(reg12) AS reg12,SUM(reg13) AS reg13, SUM(reg14) AS reg14 , SUM(reg15) AS reg15 , SUM(reg16) AS reg16 , SUM(reg17) AS reg17, SUM(reg18) AS reg18, SUM(reg19) AS reg19 , SUM(reg20) AS reg20 , SUM(reg21) AS reg21 , SUM(reg22) AS reg22 , SUM(reg23) AS reg23 , SUM(reg24) AS reg24 FROM `position` WHERE YEAR = $year AND MONTH = $month AND DAY = $day";
     }
    
     
  }
  

 
$result = $conn->query($sql);
$row = $result->fetch_assoc();

$total = $row['reg1']+ $row['reg2'] + $row['reg3'] + $row['reg4'] + $row['reg5'] + $row['reg6']+ $row['reg7'] + $row['reg8'] + $row['reg9'] + $row['reg10'] + $row['reg11']+ $row['reg12'] + $row['reg13'] + $row['reg14'] + $row['reg15'] + $row['reg16']+ $row['reg17'] + $row['reg18'] + $row['reg19'] + $row['reg20'] +  $row['reg21'] +  $row['reg22'] +  $row['reg23'] +  $row['reg24'] ;

if ($total > 0) {

$rate1  = ($row['reg1'] / $total) * 100 ;
$rate2  = ($row['reg2'] / $total) * 100 ;
$rate3  = ($row['reg3'] / $total) * 100 ;
$rate4  = ($row['reg4'] / $total) * 100 ;
$rate5  = ($row['reg5'] / $total) * 100 ;
$rate6  = ($row['reg6'] / $total) * 100 ;
$rate7  = ($row['reg7'] / $total) * 100 ;
$rate8  = ($row['reg8'] / $total) * 100 ;
$rate9  = ($row['reg9'] / $total) * 100 ;
$rate10 = ($row['reg10'] / $total) * 100 ;
$rate11 = ($row['reg11'] / $total) * 100 ;
$rate12 = ($row['reg12'] / $total) * 100 ;
$rate13 = ($row['reg13'] / $total) * 100 ;
$rate14 = ($row['reg14'] / $total) * 100 ;
$rate15 = ($row['reg15'] / $total) * 100 ;
$rate16 = ($row['reg16'] / $total) * 100 ;
$rate17 = ($row['reg17'] / $total) * 100 ;
$rate18 = ($row['reg18'] / $total) * 100 ;
$rate19 = ($row['reg19'] / $total) * 100 ;
$rate20 = ($row['reg20'] / $total) * 100 ;
$rate21 = ($row['reg21'] / $total) * 100 ;
$rate21 = ($row['reg21'] / $total) * 100 ;
$rate22 = ($row['reg23'] / $total) * 100 ;
$rate23 = ($row['reg23'] / $total) * 100 ;
$rate24 = ($row['reg24'] / $total) * 100 ;




 $array = [
  ['x'=>'106' , 'y'=>'78','count'=>$rate1],
  ['x'=>'318' , 'y'=>'78','count'=>$rate2],
  ['x'=>'530' , 'y'=>'78','count'=>$rate3],
  ['x'=>'743' , 'y'=>'78','count'=>$rate4],
  ['x'=>'955' , 'y'=>'78','count'=>$rate5],
  ['x'=>'1169' , 'y'=>'78','count'=>$rate6],
  ['x'=>'106' , 'y'=>'232','count'=>$rate7],
  ['x'=>'318' , 'y'=>'232','count'=>$rate8],
  ['x'=>'530' , 'y'=>'232','count'=>$rate9],
  ['x'=>'743' , 'y'=>'232','count'=>$rate10],
  ['x'=>'955' , 'y'=>'232','count'=>$rate11],
  ['x'=>'1169' , 'y'=>'232','count'=>$rate12],
  ['x'=>'106' , 'y'=>'386','count'=>$rate13],
  ['x'=>'318' , 'y'=>'386','count'=>$rate14],
  ['x'=>'530' , 'y'=>'386','count'=>$rate15],
  ['x'=>'743' , 'y'=>'386','count'=>$rate16],
  ['x'=>'955' , 'y'=>'386','count'=>$rate17],
  ['x'=>'1169' , 'y'=>'386','count'=>$rate18],
  ['x'=>'106' , 'y'=>'541','count'=>$rate19],
  ['x'=>'318' , 'y'=>'541','count'=>$rate20],
  ['x'=>'530' , 'y'=>'541','count'=>$rate21],
  ['x'=>'743' , 'y'=>'541','count'=>$rate22],
  ['x'=>'955' , 'y'=>'541','count'=>$rate23],
  ['x'=>'1169' , 'y'=>'541','count'=>$rate24],
]; 

$max = round(max(array_column($array, 'count')));




$final = [];
foreach ($array as $value) {
   for($i=0; $i< round($value['count']) ; $i++) {
    $final[] = ['x' => $value['x'] , 'y'=>$value['y']];
  }
}
                      
$position = json_encode($final);

 
  $data =  '{"positions":'.$position.'}';

  header('Content-Type: application/json');
  echo $data;
  

} else {

  $data = '{"positions": [{
            "X": 0,
            "Y": 0
          }]}';

  header('Content-Type: application/json');
  echo $data;
} 

 

  $conn->close();
 