$(document).ready(() => {
    $("#resOtpCon").keyup((e) => {
        if (
            e.target.value == null ||
            e.target.value == "" ||
            e.target.value == " " ||
            e.target.value.length != 6
        ) {
            $("#userTypedResOtp").attr("disabled", "disabled");
            $("#resOtpMsg").css({ display: "block", color: "red" });
            $("#resOtpMsg").html("Incorrect OTP !");
        } else if (e.target.value.length == 6) {
            $("#resOtpMsg").css("color", "#0d6efd");
            $("#resOtpMsg").html("OTP Confirmed");
            $("#userTypedResOtp").removeAttr("disabled");
        } else {
            $("#userTypedResOtp").attr("disabled", "disabled");
        }
    });
});
