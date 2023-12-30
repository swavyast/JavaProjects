/**
 * My Script
 */
alert("Script is loading")

function serverResp() {
	const mydiv = document.createElement("div");
	mydiv.setAttribute("class", "bg-dark text-light text-center fs-2");
	mydiv.innerHTML = "${response}";
	const r = document.getElementById("myResponseHeader");
	r.appendChild(mydiv);
}

function myToast() {
	const myvar = "${response}";
	document.write(myvar);
}

			function anotherToast(){
				
			}