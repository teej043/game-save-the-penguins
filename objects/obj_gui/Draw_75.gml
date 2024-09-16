/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_right);
draw_set_font(fnt_score);
draw_set_color(c_ltgrey);
draw_text(view_wport[0] - 10 + 1, 10 + 2, score);
draw_set_color(-1);
draw_text(view_wport[0] - 10, 10, score);
draw_set_halign(0);
draw_set_font(fnt_main);


// Incremental height variable
var _yy = y;

// Draw the panel

draw_sprite_ext(props.sprite, 0, x, y, box_spr_scalex, box_spr_scaley, 0, -1, 1);


if (array_length(props.content) > 1) {
	// Draw tabs if more than one content page	
	
} 

// Draw elements for current tab
for (var _i =0; _i < array_length(props.content[tab_index].elements); _i++) {
	var _data = props.content[tab_index].elements[_i];
	switch(_data.type) {
		case CONTENTTYPE.HEADING:
			draw_set_font(fnt_main);
			draw_set_halign(_data.halign);
			draw_set_valign(_data.valign);
			_yy = _yy + string_height_ext(_data.value, 0, box_inner_width);
			switch(_data.halign) {
				case fa_left: draw_text_ext(box_x, _yy, _data.value, -1, box_inner_width); break;
				case fa_center : draw_text_ext(box_x + (box_inner_width / 2), _yy, _data.value, -1, box_inner_width); break;
				case fa_right : draw_text_ext(box_x + box_inner_width, _yy, _data.value, -1, box_inner_width); break;
			}
			break;
		case CONTENTTYPE.TEXTS:
			draw_set_font(fnt_body);
			draw_set_halign(_data.halign);
			draw_set_valign(_data.valign);
			_yy = _yy + string_height_ext(_data.value, 0, box_inner_width);
			switch(_data.halign) {
				case fa_left: draw_text_ext(box_x, _yy, _data.value, -1, box_inner_width); break;
				case fa_center : draw_text_ext(box_x + (box_inner_width / 2), _yy, _data.value, -1, box_inner_width); break;
				case fa_right : draw_text_ext(box_x + box_inner_width, _yy, _data.value, -1, box_inner_width); break;
			}
			break;
	}
}


// Reset
draw_set_font(fnt_main);
draw_set_halign(fa_left);
draw_set_valign(fa_top);



if (VISUAL_DEBUG) {
	
	var _lh = 30;
	var _cam = view_camera[0];
	
	draw_text(10, 10, $"d_orientation: {d_orientation}");
	draw_text(10, 10+_lh*1, $"display_get_gui_width {display_get_gui_width()}");
	draw_text(10, 10+_lh*2, $"display_get_gui_height: {display_get_gui_height()}");
	draw_text(10, 10+_lh*3, $"browser_width: {browser_width}");
	draw_text(10, 10+_lh*4, $"browser_height: {browser_height}");
	draw_text(10, 10+_lh*5, $"view_wport: {view_wport[0]}");
	draw_text(10, 10+_lh*6, $"view_hport: {view_hport[0]}");
	draw_text(10, 10+_lh*7, $"camera_get_view_width: {camera_get_view_width(_cam)}");
	draw_text(10, 10+_lh*8, $"camera_get_view_height: {camera_get_view_height(_cam)}");
	draw_text(10, 10+_lh*9, $"d_camera: {d_camera}");
	draw_text(10, 10+_lh*10, $"view_wport: {view_wport[0]}");
	draw_text(10, 10+_lh*11, $"view_hport: {view_hport[0]}");
	draw_text(10, 10+_lh*12, $"view_xport: {view_xport[0]}");
	draw_text(10, 10+_lh*13, $"view_yport: {view_yport[0]}");
	draw_text(10, 10+_lh*14, $"view_get_xport: {view_get_xport(view_current)}");
	draw_text(10, 10+_lh*15, $"view_get_yport: {view_get_yport(view_current)}");
	draw_text(10, 10+_lh*16, $"camera_get_view_x: {camera_get_view_x(_cam)}");
	draw_text(10, 10+_lh*17, $"camera_get_view_y: {camera_get_view_y(_cam)}");
	draw_text(10, 10+_lh*18, $"display_get_width: {display_get_width()}");
	draw_text(10, 10+_lh*19, $"display_get_height: {display_get_height()}");
	
	draw_text(10, 10+_lh*20, $"has_recovered: {obj_skier.has_recovered}");
}
