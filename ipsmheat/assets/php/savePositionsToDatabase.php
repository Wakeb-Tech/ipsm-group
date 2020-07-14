<?php

    $conn =  require "databaseConnection.php";

// var_dump($_POST['points']); die;

    $year = json_decode($_POST["year"]);
    $month = json_decode($_POST["month"]);
	$week = json_decode($_POST["week"]);
	$day = json_decode($_POST["day"]);
	$hour = json_decode($_POST["hour"]);
    $data = json_decode($_POST['points']);



    $sql = "INSERT INTO `position` (YEAR,MONTH, DAY, WEEK, HOUR, reg1, reg2, reg3 , reg4 , reg5, reg6, reg7, reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15, reg16, reg17, reg18, reg19, reg20, reg21, reg22, reg23, reg24)
    VALUES    ('$year', '$month', '$day', '$week', '$hour', '".$data->r1."' , '".$data->r2."', '".$data->r3."' , '".$data->r4."', '".$data->r5."' , '".$data->r6."', '".$data->r7."' , '".$data->r8."', '".$data->r9."' , '".$data->r10."', '".$data->r11."' , '".$data->r12."', '".$data->r13."' , '".$data->r14."', '".$data->r15."' , '".$data->r16."', '".$data->r17."' , '".$data->r18."', '".$data->r19."' , '".$data->r20."', '".$data->r21."' , '".$data->r22."', '".$data->r23."' , '".$data->r24."'  )   ";

    if ($conn->query($sql)) {
        echo "Data saved successfully to database";
    } else {
        // echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
       

    
   
    

    $conn->close();