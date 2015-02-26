<?php

/* *************************************************** 
DOCUMENT:		process-login.php
LANGUAGE:		PHP
ENVIRONMENT:	MYSQL
SERVER NAME:	198.71.225.50
DATABASE NAME:	projectdalek
********************************************************/

include_once 'db_connect.php';
include-once 'functions.php';

sec_session_start();

if (isset($_POST['UserName'], $_POST['P'])) {
	$UserName = $_POST['UserName'];
	$Password = $_POST['P'];
	
	if (login($UserName, $Password, $mysqli) == true {
		//Login successful
		header ('Location: ../protected_page.php');
	} else {
		// Login failed
		header ('Location: ../index.php?error=1');
	}
}
else {
	echo 'Invalid Request';
}

?>