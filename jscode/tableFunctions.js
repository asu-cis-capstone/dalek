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
	var currentColor = document.getElementById(tableNumber).style.backgroundColor;
	
	
	if (currentColor == "Green")
	{
		document.getElementById(tableNumber).style.backgroundColor = "Yellow";
	}
	else if (currentColor == "Yellow")
	{
		document.getElementById(tableNumber).style.backgroundColor = "Red";
	}
	else
	{
		document.getElementById(tableNumber).style.backgroundColor = "Green";
	}
}