var sts = document.getElementById("status").value;
if (sts == "noOtp") {
	$("#noU").css("display", "block");
	$("#noU").html("OTP bypassing is not allowed !!! Please try again.");
} else if (sts == "invOtp") {
	$("#noU").css("display", "block");
	$("#noU").html("Confirmed OTP invalid !!! Please try again.");
} else {
	$("#noU").css("display", "none");
}