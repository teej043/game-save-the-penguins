/// @description Insert description here
// You can write your code in this editor

test_func = function() {
	show_message("WAH!");
}

default_props = {
	inactive: false,
	sprite: spr_btn,
	label: "Label",
	padding: 15,
	trigger: test_func,
	width: 0,
	height:0,
	font: fnt_main,
	halign: fa_center,
	valign: fa_middle,
	shadow: c_dkgrey
}

props = default_props;

btnw = 0;
btnh = 0;
x = 0;
y = 0;

gui_btn_init();


//show_message(btnw);
//show_message(variable_global_get("player_name"));

