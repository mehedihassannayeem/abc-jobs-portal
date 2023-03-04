var sts = document.getElementById("status").value;
if (sts == "logError") {
    $("#logErrUname").css("display", "block");
    $("#logErrUpass").css("display", "block");
} else {
    $("#logErrUname").css("display", "none");
    $("#logErrUpass").css("display", "none");
}

if (sts == "noUserFound") {
    $("#inValLogCre").css("display", "block");
} else {
    $("#inValLogCre").css("display", "none");
}
