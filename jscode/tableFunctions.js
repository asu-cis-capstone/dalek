/*
tableFunctions.js
Project Dalek
Paul VanHerpen
Ashley Ortiz
Sophea Soeun
John Grijalva
CIS-440
Spring 2015
*/

/* var obj = new Timer();
obj.Interval = 1000;
obj.Tick = timer_tick; */

function colorChange(tableNumber) {
	//var tableClicked = document.getElementById
	var currentColor = document.getElementById("B" + tableNumber).style.backgroundColor;
	//var warning = "Current Color:";
	
	//	warning = warning + "\n" + currentColor;
	//	alert(warning);
	
	if (currentColor == "Green" || currentColor =="green" ||currentColor =="")
	{
		document.getElementById("B" + tableNumber).style.backgroundColor = "Yellow";
		//obj.Start();

	}
	else if (currentColor == "Yellow" || currentColor =="yellow")
	{
		document.getElementById("B" + tableNumber).style.backgroundColor = "Red";
		//obj.Stop();
	}
	else if (currentColor == "Red" || currentColor =="red")
	{
		document.getElementById("B" + tableNumber).style.backgroundColor = "Green";
	}
}

function resetColors() {
	for (i = 11; i < 309; i++)
	{
		if ( i >= 11 && i <= 15 )
		{
			document.getElementById("B" + i).style.backgroundColor = "Green";
		}
		else if ( i >= 21 && i <= 25 )
		{
			document.getElementById("B" + i).style.backgroundColor = "Green";
		}
		else if ( i >= 31 && i <= 36 )
		{
			document.getElementById("B" + i).style.backgroundColor = "Green";
		}
		else if ( i >= 41 && i <= 45 )
		{
			document.getElementById("B" + i).style.backgroundColor = "Green";
		}
		else if ( i >= 51 && i <= 57 )
		{
			document.getElementById("B" + i).style.backgroundColor = "Green";
		}
		else if ( i >= 61 && i <= 68 )
		{
			document.getElementById("B" + i).style.backgroundColor = "Green";
		}
		else if ( i >= 71 && i <= 77 )
		{
			document.getElementById("B" + i).style.backgroundColor = "Green";
		}
		else if ( i >= 81 && i <= 85 )
		{
			document.getElementById("B" + i).style.backgroundColor = "Green";
		}
		else if ( i >= 90 && i <= 99 )
		{
			document.getElementById("B" + i).style.backgroundColor = "Green";
		}
		else if ( i >= 101 && i <= 106 )
		{
			document.getElementById("B" + i).style.backgroundColor = "Green";
		}
		else if ( i >= 201 && i <= 209 )
		{
			document.getElementById("B" + i).style.backgroundColor = "Green";
		}
		else if ( i >= 301 && i <= 308 )
		{
			document.getElementById("B" + i).style.backgroundColor = "Green";
		}
	}
}

function changeFloorPlan(servers) {
	if (servers == 4)
	{
		$('body').css('background-image', 'url(../images/backgrounds/header-top.jpg)');
	}
	else if (servers == 5)
	{
		$('body').css('background-image', 'url(../images/backgrounds/header-top.jpg)');
	}
	else if (servers == 6)
	{
		$('body').css('background-image', 'url(../images/backgrounds/header-top.jpg)');
	}
	else if (servers == 7)
	{
		$('body').css('background-image', 'url(../images/backgrounds/header-top.jpg)');
	}
	else if (servers == 8)
	{
		$('body').css('background-image', 'url(../images/backgrounds/header-top.jpg)');
	}
	else if (servers == 9)
	{
		$('body').css('background-image', 'url(../images/backgrounds/header-top.jpg)');
	}
	else if (servers == 10)
	{
		$('body').css('background-image', 'url(../images/backgrounds/header-top.jpg)');
	}
	else if (servers == 11)
	{
		$('body').css('background-image', 'url(../images/backgrounds/header-top.jpg)');
	}
	else if (servers == 12)
	{
		$('body').css('background-image', 'url(../images/backgrounds/header-top.jpg)');
	}	
}

/* //Declaring class timer
var Timer = function()
{
	//Property: Frquency of elaspse event of the timer in milliseconds
	this.Interval = 1000;
	
	//Property: Whether the timer is enabled or not
	this.Enable = new Boolean(false);
	
	//Event: Timer tick
	this.Tick;

	//Variable: Hold interval id of the timer
	var timerId = 0;
	
	//Variable: Hold instance of this class
	var thisobject;

	//Function: Start the timer
	this.Start = function()
	{
		this.Enable = new Boolean(true);
		
		thisObject = this;
		if(thisObject.Enable)
		{
			thisObject.timerId = setInterval(
			function()
			{
				thisObject.Tick();
			}, thisObject.Interval();
		}
	};
	
	//Function: Stops the timer
	this.Stop = function()
	{
		thisObject.Enable = new Boolean(false);
		clearInterval(thisObject.timerId);
	};
};

function timer_tick()
{
	index  = index + 1;
	document.getElementById("div1").innerHTML =index;
	
	if (index == 100) 
	{
		obj.Stop();
	}
} */





















