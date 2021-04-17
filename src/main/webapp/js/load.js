/**
 * 
 */

function doSome(){
	console.log("hello");
	let user="ashish";
	let greet=`hi doing some work "bro" 'girl' ${user}`;
	console.log(greet);
}

function removeFilmVisible(){
	console.log("remove")
	
	var x =document.getElementById("removeDiv");
	  if (x.style.display== "none") {
			console.log("if")

	    x.style.display = "block";
	  } else {
			console.log("else")

	    x.style.display = "none";
	  }
}