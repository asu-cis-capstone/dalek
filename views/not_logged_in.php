<?php include('_header.php'); ?>


<head>
	<!-- Meta Tags -->
    <meta charset="utf-8">
	<meta name="robots" content="noindex,nofollow" />
	
	<!-- CSS Tags -->
	<link type="text/css" rel="stylesheet" href="stylesheets/login.css" />

	<!-- Web Page Title -->
	<title>Project Dalek</title>
</head>	

<body>
	<!-- Login Form Header -->
	<div id="loginHeader">
		<p>Project Dalek</p>
	</div>
	
	<div id="description">
		<p>Please sign in to continue.</p>
	</div>
	
	<!--Login Form Begins -->
	<form id="loginForm" method="post" action="index.php" name="loginform" accept-charset='UTF-8'>
	
		<!-- Ask for Username -->
		<input id="user_name" type="text" name="user_name" placeholder="Username"
		autofocus required
		title="Please enter your username." />
		<br />
	
		<!-- Ask for Password -->
		<input id="user_password" type="password" name="user_password" placeholder="Password"
		autocompleted="off" required 
		title="Please enter your password"/>
	
		<!-- Remember Password -->
		<input type="checkbox" id="user_rememberme" name="user_rememberme" value="1" />
		<label for="user_rememberme">Remember Me</label>
	
		<!-- Login Button -->
		<p class="login">
		<input type="submit" name="login" value="Login" />
		</p class>
	
		<!-- Other Options -->
		<!-- Other Options Begin
		<div id="other">
			<a href="register.php">Create an account</a>
			<a href="password_reset.php">Reset password</a>
		</div> -->	
	</form>
	
</body>

<?php include('_footer.php'); ?>
