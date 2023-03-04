$(document).ready(() => {
    // full name front-end side validation
    $(document).ready(() => {
        $("#regFormFullname").keyup((e) => {
            if (e.target.value.length < 6) {
                $("#errorMsgFullname").css("display", "block");
                $("#errorMsgFullname").html("minimum length is 5");
            } else {
                $("#errorMsgFullname").css("display", "none");
            }
        });
    });

    //user name front-end side validation
    $("#regFormUsername").keyup(() => {
        var userEnterName = $("#regFormUsername").val();

        $.ajax({
            type: "POST",
            data: { user_name: userEnterName },
            url: "check_available_username",
            success: (result) => {
                if (result.match("is available")) {
                    $("#errorMsgUsername").css({
                        color: "#0d6efd",
                        display: "block",
                    });
                    $("#regSubmitBtn").removeAttr("disabled");
                    //$("#regSubmitBtn").css("background", "#012e58"); --- 
                    $("#regSubmitBtn").css("background", "#0d6efd");
                    $("#errorMsgUsername").html(result);
                } else {
                    $("#errorMsgUsername").css({
                        color: "red",
                        display: "block",
                    });
                    $("#regSubmitBtn").attr("disabled", "disabled");
                    $("#regSubmitBtn").css("background", "red");
                    $("#errorMsgUsername").html(result);
                }
            },
        });
    });

    //email front-end side validation
    const mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;

    $("#regFormEmail").keyup(() => {
        var userEnterEmail = $("#regFormEmail").val();
        $.ajax({
            type: "POST",
            data: { userEmail: userEnterEmail },
            url: "check_available_email",
            success: (result) => {
                if (result.match("accepts")) {
                    $("#regFormEmail").keyup((e) => {
                        if (e.target.value.match(mailformat)) {
                            $("#errorMsgEmail").css({
                                color: "#0d6efd",
                                display: "block",
                            });
                            $("#regSubmitBtn").removeAttr("disabled");
                            $("#regSubmitBtn").css("background", "#012e58");
                            $("#errorMsgEmail").html(result);
                        } else if (!e.target.value.match(mailformat)) {
                            $("#regSubmitBtn").attr("disabled", "disabled");
                            $("#regSubmitBtn").css("background", "red");
                            $("#errorMsgEmail").css({
                                color: "red",
                                display: "block",
                            });
                            $("#errorMsgEmail").html(
                                "please provide a valid email"
                            );
                        }
                    });
                } else {
                    $("#errorMsgEmail").css({
                        color: "red",
                        display: "block",
                    });
                    $("#regSubmitBtn").attr("disabled", "disabled");
                    $("#regSubmitBtn").css("background", "red");
                    $("#errorMsgEmail").html(result);
                }
            },
        });
    });

    // create password front-end side validation
    $("#regFormCrePass").keyup((e) => {
        if (e.target.value.length < 8) {
            $("#errorMsgCrePass").css("display", "block");
            $("#errorMsgCrePass").html("minimum length is 8");
        } else {
            $("#errorMsgCrePass").css("display", "none");
        }
    });

    // is password matched front-end side validation
    $("#regFormConPass").keyup(() => {
        if ($("#regFormCrePass").val() != $("#regFormConPass").val()) {
            $("#errorMsgPass").css("display", "block");
            $("#errorMsgPass").html("password not matched !!!");
        } else {
            $("#errorMsgPass").css("display", "none");
        }
    });

    // is registered with empty filed front-end side validation
    var sts = document.getElementById("status").value;
    if (sts == "regError") {
        $("#errorMsgFullname").css("display", "block");
        $("#errorMsgFullname").html("please enter your name");

        $("#errorMsgUsername").css("display", "block");
        $("#errorMsgUsername").html("please enter your username");

        $("#errorMsgEmail").css("display", "block");
        $("#errorMsgEmail").html("please enter your email");

        $("#errorMsgCrePass").css("display", "block");
        $("#errorMsgCrePass").html("please enter your password");
    }

    if (sts == "error") {
        $("#noReg").css("display", "block");
        $("#noReg").html("Something wend wrong !");
    }
});
