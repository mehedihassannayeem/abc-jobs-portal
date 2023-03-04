$(document).ready(() => {
    // contact form validation name
    $(document).ready(() => {
        $("#conFormName").keyup((e) => {
            if (e.target.value.length < 6) {
                $("#conFormNameMsg").css("display", "block");
            } else {
                $("#conFormNameMsg").css("display", "none");
            }
        });
    });

    // contact form validation email
    const mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    $("#conFormEmail").keyup((e) => {
        if (!e.target.value.match(mailformat)) {
            $("#conFormEmailMsg").css("display", "block");
        } else if (e.target.value.match(mailformat)) {
            $("#conFormEmailMsg").css("display", "none");
        }
    });

    // contact form validation message
    $("#conFormMessage").keyup((e) => {
        if (e.target.value.length < 16) {
            $("#conFormMessageError").css("display", "block");
        } else {
            $("#conFormMessageError").css("display", "none");
        }
    });
});

var sts = document.getElementById("status").value;
if (sts == "error") {
    $("h3").css("display", "block");
    $("h4").css("display", "none");
}
