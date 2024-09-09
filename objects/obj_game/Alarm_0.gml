/// @description Just for testing post score
// You can write your code in this editor

show_debug_message("posting test score");

var _temp = {
	name: "Tester",
	value: random_range(1, 99),
	date: date_format("Ymd"),
}

online_highscore_post(_temp);