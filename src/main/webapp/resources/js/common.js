function clickMenu(index) {
	$(".current").removeClass("current");
	$("#menu_ul li:eq(" + index + ")").addClass("current");
}