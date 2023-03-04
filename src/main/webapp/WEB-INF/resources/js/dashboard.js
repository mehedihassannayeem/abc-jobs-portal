$(document).ready(() => {
    $("#personal-info").click(() => {
        $("#professionaInfo").css("display", "none");
        $("#notificationsShow").css("display", "none");
        $("#socialAccounts").css("display", "none");
        $("#privacyPolicy").css("display", "none");
        $("#secondPart").css("display", "block");
        $("#personalInfo").css("display", "block");
    });

    $("#professional-info").click(() => {
        $("#notificationsShow").css("display", "none");
        $("#socialAccounts").css("display", "none");
        $("#privacyPolicy").css("display", "none");
        $("#personalInfo").css("display", "none");
        $("#secondPart").css("display", "block");
        $("#professionaInfo").css("display", "block");
    });

    $("#notifications").click(() => {
        $("#socialAccounts").css("display", "none");
        $("#privacyPolicy").css("display", "none");
        $("#personalInfo").css("display", "none");
        $("#professionaInfo").css("display", "none");
        $("#secondPart").css("display", "block");
        $("#notificationsShow").css("display", "block");
    });

    $("#social-accounts").click(() => {
        $("#privacyPolicy").css("display", "none");
        $("#personalInfo").css("display", "none");
        $("#professionaInfo").css("display", "none");
        $("#notificationsShow").css("display", "none");
        $("#secondPart").css("display", "block");
        $("#socialAccounts").css("display", "block");
    });

    $("#privacy-policy").click(() => {
        $("#socialAccounts").css("display", "none");
        $("#personalInfo").css("display", "none");
        $("#professionaInfo").css("display", "none");
        $("#notificationsShow").css("display", "none");
        $("#secondPart").css("display", "block");
        $("#privacyPolicy").css("display", "block");
    });  
});