$(() => {
    $(".genealogy-tree ul").hide();
    $(".genealogy-tree>ul").show();
    $(".genealogy-tree ul.active").show();
    $(".genealogy-tree li").on("click", function (e) {
        var children = $(this).find("> ul");
        if (children.is(":visible"))
            children.hide("fast").removeClass("active");
        else children.show("fast").addClass("active");
        e.stopPropagation();
    });
});

function pageNagivate(pageName) {
    if (pageName == "home") {
        window.location.href = "/AbcJobPortal/";
    }
    if (pageName == "login") {
        window.location.href = "/AbcJobPortal/login";
    }
    if (pageName == "reset") {
        window.location.href = "/AbcJobPortal/forgot-password";
    }
    if (pageName == "signin") {
        window.location.href = "/AbcJobPortal/registration";
    }
    if (pageName == "contact") {
        window.location.href = "/AbcJobPortal#urlContactFormHash";
    }
}
