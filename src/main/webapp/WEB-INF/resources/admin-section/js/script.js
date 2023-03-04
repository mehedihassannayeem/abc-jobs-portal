/**/
/**/
/*side navbar*/
let arrow = document.querySelectorAll(".fa-caret-down");
for (var i = 0; i < arrow.length; i++) {
	arrow[i].addEventListener("click", (e) => {
		let arrowParent = e.target.parentElement.parentElement;
		arrowParent.classList.toggle("showMenu");
	});
}
let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".fa-bars-staggered");
sidebarBtn.addEventListener("click", () => {
	sidebar.classList.toggle("close");
});

/**/
/**/
/*job form*/
const firstForm = document.querySelector(".firstForm");
const secondForm = document.querySelector(".secondForm");
const nextBtn = document.querySelector(".nextBtn");
const backBtn = document.querySelector(".backBtn");

nextBtn.addEventListener("click", () => {
	firstForm.classList.add("formToggle");
	secondForm.classList.remove("formToggle");
	nextBtn.classList.add("formToggle");
	backBtn.classList.remove("formToggle");
});

backBtn.addEventListener("click", () => {
	secondForm.classList.add("formToggle");
	firstForm.classList.remove("formToggle");
	nextBtn.classList.remove("formToggle");
	backBtn.classList.add("formToggle");
});