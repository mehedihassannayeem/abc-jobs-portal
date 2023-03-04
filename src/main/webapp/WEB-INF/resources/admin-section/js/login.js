var sts = document.getElementById("status").value;
if (sts == "logError") {
	$("#adminLoginLabel").css("color", "red");
	$("#adminLoginLabel").html("Invalid Credential !!!");
} else if (sts == "fieldBlank") {
	$("#adminLoginLabel").css("color", "red");
	$("#adminLoginLabel").html("Please Enter Your Credential !!!");
}