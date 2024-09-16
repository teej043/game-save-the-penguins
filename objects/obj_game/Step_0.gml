/// @description Insert description here
// You can write your code in this editor

if (browser_width != bw || browser_height !=bh) {

	bw = browser_width;
	bh = browser_height;
	window_set_size(bw, bh);
	window_center();
}


if (keyboard_check_pressed(vk_escape)) {
	game_pause_toggle();
}