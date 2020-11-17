<?php

$query = $argv[1];

if(stripos($query,'s') !== false) {
	$query = explode('s',$query)[0];
}

elseif(stripos($query,'m') !== false) {
	$query = explode('m',$query)[0] * 60;
}
elseif(stripos($query,'h') !== false) {
	$query = explode('h',$query)[0] * 60 * 60;
}


echo $query;

?>