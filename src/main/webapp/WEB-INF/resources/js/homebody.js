$(document).ready(() => {
	$("#moreSecDot").click(() => {
		$(".moreSecOpt").toggle();
	});

	$(function() {
		$("#tabs").tabs();
	});

	$("#fvtJob").click(() => {
		$("#fvtJob").css("display", "none");
		$("#fvtJobFill").css("display", "block");
		$("#fvtJob1").css("display", "none");
		$("#fvtJobFill1").css("display", "block");
	});

	$("#fvtJobFill").click(() => {
		$("#fvtJobFill").css("display", "none");
		$("#fvtJob").css("display", "block");
		$("#fvtJobFill1").css("display", "none");
		$("#fvtJob1").css("display", "block");
	});

	$("#fvtJob1").click(() => {
		$("#fvtJob1").css("display", "none");
		$("#fvtJobFill1").css("display", "block");
		$("#fvtJob").css("display", "none");
		$("#fvtJobFill").css("display", "block");
	});

	$("#fvtJobFill1").click(() => {
		$("#fvtJobFill1").css("display", "none");
		$("#fvtJob1").css("display", "block");
		$("#fvtJobFill").css("display", "none");
		$("#fvtJob").css("display", "block");
	});
});
