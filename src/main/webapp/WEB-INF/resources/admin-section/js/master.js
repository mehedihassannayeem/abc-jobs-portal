var sts = document.getElementById("status").value;
if (sts == "invalidMasterLogin") {
	$("#masErrMsg").css({ "display": "block" });
	$("#errMsg").css({ "color": "red" });
	$("#errMsg").html("Invalid Credential !!!");
} else if (sts == "fieldBlank") {
	$("#masErrMsg").css({ "display": "block" });
	$("#errMsg").css({ "color": "red" });
	$("#errMsg").html("Please Enter the Master Credential !!!");
} else if (sts == "visible") {
	$("#masErrMsg").css({ "display": "block" });
}




/**/
/**/
/*master login*/
const masLogDiv = window.getComputedStyle(document.getElementById("masErrMsg"));
if (masLogDiv.display == "block") {
	setTimeout(() => {
		document.getElementById("masErrMsg").style.display = "none";		
	}, 1000 * 10)
}