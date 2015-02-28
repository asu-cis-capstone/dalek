function validateLogin()
 {
	 
		// Get the values entered by the user
		var username = document.getElementById("un_1").value;
		var password = document.getElementById("pw_1").value;
	   
		// Set to true if an element fails validation
		var failed = false;
		
		// Message to user
		var warning = "Your login attempt is invalid.";
		
		// Focus variables
		var f1 = 0;
		var f2 = 0;
		
		// Check the username of the user
		if (username != "guest")
		{
			f1=1;
			failed = true;
			warning = warning + "\n - Your username is incorrect.";
		}
		
		// Check the password of the user
		if (password != "guest123!")
		{
			f2=1;
			failed = true;
			warning = warning + "\n - Your password is incorrect.";
		}
		
		// Check to see if anything failed
		if (failed)
		{
			alert(warning);
			
			// Check floating flocus flags
			if (f1==1) {document.getElementById("un_1").focus();}
			if (f2==1) {document.getElementById("pw_1").focus();}
			
			return false;
		}
		
		// Passed validation
		return true;
	
	}
