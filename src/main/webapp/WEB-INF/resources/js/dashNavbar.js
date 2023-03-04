$(document).ready(() => {
	$("#pubProSearch").focus(() => {
		$(".searchResultBox").css("display", "block");
	});

	$("#pubProSearch").focusout(() => {
		$(".searchResultBox").css("display", "none");
	});
});
