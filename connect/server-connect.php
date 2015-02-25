<?php
	// server-connect.php
	
	// variables
	$host	= 'localhost';
	$user	= 'pvanher';
	$pw		= 'cis425';
	$db		= 'pvanher';
	
	// connect to the DB
	$dbc = mysqli_connect($host, $user, $pw, $db) or die('Unable to connect! (SERVER)');
?>