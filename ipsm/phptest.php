<?php
$result = array(
    "counts"=> array(
        "angry"=> 0,
        "disgust"=> 0,
        "fear"=> 2,
        "happy"=> 2,
        "neutral"=> 1,
        "people"=> 6,
        "sad"=> 0,
        "surprise"=> 0
    ),
    "emotions"=> array(
        "1"=> "fear",
        "2"=> "neutral",
        "3"=> "happy",
        "4"=> "happy",
        "5"=> "fear"
    ),
    "faces"=> array(
        "1"=> [
            544,
            50,
            52,
            52
        ],
        "2"=> [
            74,
            167,
            52,
            52
        ],
        "3"=> [
            308,
            162,
            60,
            60
        ],
        "4"=> [
            91,
            85,
            43,
            43
        ],
        "5"=> [
            382,
            86,
            46,
            46
        ]
    )
);

echo json_encode($result); 
?>