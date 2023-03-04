$(document).ready(() => {
    $("#emOtpCon").keyup((e) => {
        if (
            e.target.value == null ||
            e.target.value == "" ||
            e.target.value == " " ||
            e.target.value.length != 6
        ) {
            $("#userTypedEmOtp").attr("disabled", "disabled");
            $("#emOtpMsg").css({ display: "block", color: "red" });
            $("#emOtpMsg").html("Incorrect OTP !");
        } else if (e.target.value.length == 6) {
            $("#emOtpMsg").css("color", "#0d6efd");
            $("#emOtpMsg").html("OTP Confirmed");
            $("#userTypedEmOtp").removeAttr("disabled");
        } else {
            $("#userTypedEmOtp").attr("disabled", "disabled");
        }
    });
});
