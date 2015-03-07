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

function colorChange(tableNumber) {
	//var tableClicked = document.getElementById
	var currentColor = document.getElementById("B" + tableNumber).style.backgroundColor;
	//var warning = "Current Color:";
	
	//	warning = warning + "\n" + currentColor;
	//	alert(warning);
	
	if (currentColor == "Green" || currentColor =="green" ||currentColor =="")
	{
		document.getElementById("B" + tableNumber).style.backgroundColor = "Yellow";
	}
	else if (currentColor == "Yellow" || currentColor =="yellow")
	{
		document.getElementById("B" + tableNumber).style.backgroundColor = "Red";
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
