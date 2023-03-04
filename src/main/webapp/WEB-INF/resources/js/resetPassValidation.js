$(document).ready(() => {
    // create password front-end side validation
    $("#forgotPassCreate").keyup((e) => {
        if (e.target.value.length < 8) {
            $("#errorMsgCrePass").css("display", "block");
            $(".btn-primary").attr("disabled", "disabled");
            $("#errorMsgCrePass").html("minimum length is 8");
        } else {
            $("#errorMsgCrePass").css("display", "none");
            $(".btn-primary").removeAttr("disabled");
        }
    });

    // is password matched front-end side validation
    $("#forgotPassConfirm").keyup(() => {
        if ($("#forgotPassCreate").val() != $("#forgotPassConfirm").val()) {
            $("#errorMsgPass").css("display", "block");
            $(".btn-primary").attr("disabled", "disabled");
            $("#errorMsgPass").html("password not matched !!!");
        } else {
            $("#errorMsgPass").css("display", "none");
            $(".btn-primary").removeAttr("disabled");
        }
    });
});
