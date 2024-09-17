/// @description Insert description here
// You can write your code in this editor


// cx = camera_get_view_x(view_camera[0]);
// cy = camera_get_view_y(view_camera[0]);
// bw = display_get_gui_width();
// bh = display_get_gui_height();

fn_pause = function (){
	with(obj_game) {
		game_pause_toggle();
	}
}

fn_dismiss = function (){
	instance_destroy();
}

props = {};

box_spr_scalex = 0;
box_spr_scaley = 0;
box_inner_width = 0;
box_inner_height = 0;
box_x = 0;
box_y = 0;

tab_index = 0;

button_count = 0;
buttons = [];
_i = 0;


//show_debug_message(props.content[tab_index].elements[0].value);

/*


box_spr = spr_btn;
box_width = 350;
box_height = 400;
box_padding = 15;


// x = (display_get_gui_width() / 2);
// y = (display_get_gui_height() / 2);
x = view_wport[view_current] / 2;
y = view_hport[view_current] / 2;
xx = x - (box_width / 2);
yy = y - (box_height / 2) - 50;

box_x = xx - box_padding;
box_y = yy - box_padding;

box_spr_scalex = ((box_width + (box_padding * 2)) * 100 / sprite_get_width(box_spr)) * 0.01;
box_spr_scaley = ((box_height + (box_padding * 2)) * 100 / sprite_get_height(box_spr)) * 0.01;

depth = -200;


draw_set_font(fnt_main);

*/