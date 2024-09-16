/// @description Insert description here
// You can write your code in this editor

ft_test = function test_trigger() {
	show_message("wah");
}

props = {
	sprite : spr_btn,
	width : 350,
	height: 400,
	padding: 15,
	margin: 15,
	position: POSITION.MIDCENTER,
	offset_x: 0,
	offset_y: 0,
	content: [{
		label : "Base",
		elements : [{
			type: CONTENTTYPE.HEADING,
			height: 0,
			halign: fa_center,
			valign: fa_middle,
			value: "Heading",
			vpadding: 5,
		},
		{
			type: CONTENTTYPE.TEXTS,
			height: 0,
			halign: fa_center,
			valign: fa_top,
			value: "Lorem ipsum dolor sit amet Curabitur suscipit suscipit tellus. Etiam rhoncus. Aenean ut eros et nisl sagittis vestibulum. Nunc sed turpis. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem.",
			vpadding: 5,
		}]
	}],
	actions: [
	{
		inactive: false,
		label: "Button",
		sprite: spr_btn,
		label: "Label",
		padding: 15,
		trigger: test_func,
		width: 0,
		height: 0,
		font: fnt_main,
		halign: fa_center,
		valign: fa_middle,
		shadow: c_dkgrey
	}]
	
}

// cx = camera_get_view_x(view_camera[0]);
// cy = camera_get_view_y(view_camera[0]);
// bw = display_get_gui_width();
// bh = display_get_gui_height();

box_spr_scalex = 0;
box_spr_scaley = 0;
box_inner_width = 0;
box_inner_height = 0;
box_x = 0;
box_y = 0;

tab_index = 0;

buttons = [];

gui_init();


show_debug_message(props.content[tab_index].elements[0].value);
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