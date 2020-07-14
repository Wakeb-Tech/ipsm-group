<?php
// $matches = [];
$text = "I recently saw @john-doe_66 riding a bike, did you noticed that too @foo-bar_25? @حسن_99";
preg_match_all ("/@([^\s]+)/" ,$text, $matches);
$result = implode(' ',$matches[0]);
preg_match_all('/@([^\s_]+)/', $result, $names);
preg_match_all('!\d+!', $result, $ids);

$mapped = array_combine($ids[0], $names[0]);

foreach ($mapped as $key => $value) {
	echo $key . "=".  $value;
}

// ?>