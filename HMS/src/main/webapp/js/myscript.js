/**
 * My Script
 */
//alert("Script is loading")
var map;
function initMap() {
		map = new mappls.Map('map', {
		center: [28.638698386592438, 77.27604556863412],
		geolocation: true,
		zoomControl: true,
		scrollWheel: false
	}
	)
}

function fetchLogoutForm() {
	const logoutForm = document.createElement("form");
	logoutForm.setAttribute("method", "post");
	logoutForm.setAttribute("action", "logout");
}
function logoutFunction() {
	const mybtn = document.createElement("button");
	mybtn.setAttribute("class", "bg-danger text-white text-center");
	mybtn.setAttribute("form", "logout");
	mybtn.setAttribute("value", "Logout")
}

//prompt("You're about to terminate your session", "testing");

function logOuT() {
	let x = confirm("You're about to terminate your session, Do you want to logout?");
	if (x == true) {
		alert("You are being redirected");
	}
	let baseUriOfPage = document.baseURI;
	baseUriOfPage = "http://localhost:8080/HMS/logout";
	action
	return baseUriOfPage;
}

const myTestMessage = "Testing ...";

function testMessageDelivered() {
	alert(myTestMessage)
}

function serverResp() {
	const mydiv = document.createElement("div");
	mydiv.setAttribute("class", "bg-dark text-light text-center fs-2");
	mydiv.innerHTML = "${response}";
	const r = document.getElementById("myResponseHeader");
	r.appendChild(mydiv);
}

function myToast() {
	document.writeln("myToast() function is loaded")
	const myvar = "${response}";
	document.write(myvar);
}

function remResp() {
	document.getElementById("respHead").removeAttribute("${response}");
}

function anotherToast() {
	const mydiv = document.createElement("div");
}

function myResponseLoader1() {
	const r = document.getElementById("myResponseHeader");
	Event.observe(r, 'load', myToast());
}




function myToaster() {
	/*const myIdTag = document.getElementById("myResponseHeader");*/
	const myToast = document.createElement("div");
	myToast.className("toast");
	myToast.role("alert");
	myToast.ariaLive("assertive");
	myToast.ariaAtomic("true");

	const myToastHeader = document.createElement("div");
	myToastHeader.className("toast-header");
	const headerImage = document.createElement("img");
	headerImage.currentSrc = "...";
	headerImage.classList.add("rounded me-2");
	headerImage.alt("alt tag");

	myToastHeader.appendChild(headerImage);

	const strongTest = document.createElement("strong");
	strongTest.className("me-auto");
	strongTest.innerHTML("Bootstrap");

	myToastHeader.appendChild(strongTest);

	const smallText = document.createElement("small");
	smallText.innerText("11 mins ago");

	myToastHeader.appendChild(smallText);

	const closeButton = document.createElement("button");
	closeButton.type("button");
	closeButton.className("btn-close");
	closeButton.setAttribute("data-bs-dismiss", "toast");
	closeButton.ariaLabel("Close");

	myToastHeader.appendChild(closeButton);
	myToast.appendChild(myToastHeader);
	const toastBody = document.createElement("div");
	toastBody.className("toast-body");
	toastBody.innerHTML("My toast is Live");
	myToast.appendChild(toastBody);
	/*myIdTag.appendChild(myToast);*/
}

function appendMyToaster(id) {
	const myId = document.getElementById(id);
	myId.append(alert(myToaster()));

}

//document.append(testMessageDelivered());

//console.log(testMessageDelivered())

function agePrompt() {
	let age = prompt("Enter your age here", "Type here");
	document.write(age);
}


function reload() {
	document.location.reload()
}


function admlogResp() {
	const mydiv = document.createElement("div");
	mydiv.setAttribute("class", "bg-dark text-light text-center fs-2");
	mydiv.innerHTML = "Hello Admin";
	const r = document.getElementById("myResponseHeader");
	r.appendChild(mydiv);
}

function adminLoginResponse() {
	const myDivision = document.createElement("div");
	myDivision.setAttribute("class", "card shadow bg-dark text-light p-2 m-2");
	myDivision.innerHTML = "Hello World";
	const myDivision1 = document.createElement("div");
	myDivision1.setAttribute("class", "card-body text-danger text-center m-2 p-2");
	myDivision1.setAttribute("id", "secondDiv");
	myDivision1.textContent = "my Division one";
	myDivision.appendChild(myDivision1);
	/*document.getElementById("respHead1").innerHTML+="Hello Admin";*/
	document.getElementById("respHead1").appendChild(myDivision);
	document.getElementById("secondDiv").appendChild(myBoldText());
}

function myBoldText() {
	const myBoldTest = document.createElement("b");
	myBoldTest.setAttribute("class", "bg-primary text-light");
	myBoldTest.innerHTML("Hello Admin");
}


function classToastCreator() {	//not-working
	const myToastDivision = document.createElement("div");
	myToastDivision.setAttribute("class", "toast");
	myToastDivision.setAttribute("role", "alert");
	myToastDivision.setAttribute("aria-live", "assertive");
	myToastDivision.setAttribute("aria-atomic", "true");
	myToastDivision.innerHTML = "Hello World";
}

function modalCreator() {
	const myDiv5 = document.createElement("div");
	myDiv5.setAttribute("class", "bg-dark text-light m-2 p-2");
	myDiv5.innerHTML("my div 5");
	document.getElementById("respHead1").appendChild(myDiv5);
	/*	
		const myDiv6 = document.createElement("div");
		myDiv6.setAttribute("class", "modal-footer");
		
		
		const myDiv1 = document.createElement("div");
		myDiv1.setAttribute("class", "modal");
		document.getElementById("respHead1").appendChild(myDiv1);
		const myDiv2 = document.createElement("div");
		myDiv2.setAttribute("class", "modal-dialog");
		
		const myDiv3 = document.createElement("div");
		myDiv3.setAttribute("class", "modal-content");
		
		const myDiv4 = document.createElement("div");
		myDiv4.setAttribute("class", "modal-header");*/
}



function toastAlert() {
	const clkvlu = document.getElementById("modalButtonLogout")

}
