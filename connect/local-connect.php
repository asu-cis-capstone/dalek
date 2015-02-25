<?php
	// local-connect.php
	
	// variables
	$host	= 'localhost';
	$user	= 'root';
	$pw		= ''; //root otherwise
	$db		= 'hmwk2147';
	
	// connect to the DB
	$dbc = mysqli_connect($host, $user, $pw, $db) or die('Unable to connect! (LOCAL)');
?>