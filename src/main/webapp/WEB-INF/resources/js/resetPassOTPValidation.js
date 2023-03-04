var sts = document.getElementById("status").value;
if (sts == "noUser") {
    $("#userIdentity").css("display", "block");
    $("#userIdentity").html("Please enter your username or email first.");
} else if (sts == "userError") {
    $("#userIdentity").css("display", "block");
    $("#userIdentity").html("user not exits! Please create one first.");
} else if (sts == "passError") {
    $("#userIdentity").css("display", "block");
    $("#userIdentity").html(
        "Confirm password doesn't match with creating password !!! Please try again."
    );
} else if (sts == "noOtp") {
    $("#userIdentity").css("display", "block");
    $("#userIdentity").html(
        "OTP bypassing is not allowed !!! Please try again."
    );
} else if (sts == "invOtp") {
    $("#userIdentity").css("display", "block");
    $("#userIdentity").html("Confirmed OTP invalid !!! Please try again.");
} else {
    $("#userIdentity").css("display", "none");
}
