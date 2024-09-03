/// @description Insert description here
// You can write your code in this editor

if (action == "start") {
	room_goto(rm_game);
}

if (action == "highscore") {
	room_goto(rm_highscore);
}

if (action == "back") {
	room_goto(rm_menu);
}