/// @description Insert description here
// You can write your code in this editor

if (action == "start") {
	//room_goto(rm_game);
	var _transition = instance_create_layer(0, 0, "Instances", obj_transition_pixelate);
	_transition.target_room = rm_game;
}

if (action == "highscore") {
	//room_goto(rm_highscore);
	var _transition = instance_create_layer(0, 0, "Instances", obj_transition_linear_blur);
	_transition.target_room = rm_highscore;
}

if (action == "back") {
	room_goto(rm_menu);
}
