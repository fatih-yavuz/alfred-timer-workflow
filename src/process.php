<?php
$time = $argv[1];

$command = "/Users/fatih/Documents/Bitbar-Plugins/countdown_timer.1s.rb $time";

exec($command);

if(stripos($time,'s') !== false) {
	$time = explode('s',$time)[0];
}

elseif(stripos($time,'m') !== false) {
	$time = explode('m',$time)[0] * 60;
}
elseif(stripos($time,'h') !== false) {
	$time = explode('h',$time)[0] * 60 * 60;
}


echo $time;
