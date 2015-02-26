<?php

/* *************************************************** 
DOCUMENT:		functions.php
LANGUAGE:		PHP
ENVIRONMENT:	MYSQL
SERVER NAME:	198.71.225.50
DATABASE NAME:	projectdalek
********************************************************/

// CONNECT TO THE DATABASE
include_once 'psl-config.php';


// START SESSION
function sec_session_start() {
	$session_name = 'sec_session_id';
	$secure = SECURE;
	$httponly = true;
	
	if (ini_set('session.use_only_cookies', 1) == FALSE {
	header("Location: .../error.php?err=Could not initiate a safe session (ini_set)");
	exit();
	}
	
	$cookieParam = session_get_cookie_params();
	session_set_cookie_params($cookieParams["lifetime"],
		$cookieParams["path"],
		$cookieParams["domain"],
		$secure,
		$httponly);
		
	session_name($session_name);
	session_start();
	session_regenerate_id(true);
}

// CHECK USERNAME AND PASSWORD
function login($UserName, $Password, $mysqli) {
	if ($stmt = $mysqli->prepare("SELECT ID, UserName, Password, Salt FROM Logins WHERE UserName = ? LIMIT 1"))
	{
		$stmt->bind_param('s', $Username); 
		$stmt->execute();
		$stmt->store_result();
	
		$stmt->bind_result($UserID, $UserName, $DB_Password, $Salt);
		$stmt->fetch();
		
		$password = hash('sha512', $Password . $Salt);
		if ($stmt->num_rows == 1) {
			
			if (checkbruke($UserID, $mysql) == true) {
				return false;
			}
			else {
				if ($DB_Password == $Password) {
					
					$user_browser = $_SERVER['HTTP_USER_AGENT'];
					$UserID = preg_replace("/[^0-9]+/", "", $UserID);
					$_SESSION['user_id'] = $UserID;
					$UserName = preg_replace("/[^a-zA-Z0-9_\-]+/", "", $UserName);
					
					$_SESSION['username'] = $UserName;
					$_SESSION['login_string'] = hash('sha512', $Password . $user_browser);
					
					return true;
				}
				else {
					$now = time();
					$mysqli->query("INSERT INTO loginAttemps(UserID, Time) VALUES ('$UserID', '$now')");
					
					return false;
				}
			}
		}
		else {
			return false;
		}
	}
}


function checkbrute ($UserID, $mysqli) {
	$now = time();
	
	$valid_attempts = $now - (2 * 60 * 60);
	
	if ($stmt = $mysqli->prepare("SELECT time FROM LoginAttemps WHERE UserID = ? AND Time > '$Valid_Attempts'")) {
		$stmt->bind_param('i', $UserID);
		
		$stmt->execute();
		$stmt->store_result()
		
		if ($stmt->num_rows > 5) {
			return true;
		} else {
			return false
		}
	}
}
					
			
	


