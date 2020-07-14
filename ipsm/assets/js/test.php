<?php
$matches = [];
$text = "I recently saw @john-doe riding a bike, did you noticed that too @foo-bar?";
preg_match_all ("(\@(?P<names>[a-zA-Z\-\_]+))" ,$text, $matches);
var_dump($matches['names']);
?>