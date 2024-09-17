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
var _yy = box_y + props.padding;

// Draw the panel

draw_sprite_ext(props.sprite, 0, x, y, box_spr_scalex, box_spr_scaley, 0, -1, 1);


//if !is_undefined(props.content) {
//	if (array_length(props.content) > 1) {
//	// Draw tabs if more than one content page	
	
//	}
//}
 

// Draw elements for current tab
for (var _i =0; _i < array_length(props.content[tab_index].elements); _i++) {
	var _data = props.content[tab_index].elements[_i];
	switch(_data.type) {
		case CONTENTTYPE.DETAILS:
			draw_set_font(fnt_main);
			for (var _p = 0; _p < array_length(_data.value); _p++) {
				draw_set_halign(fa_left);
				draw_text(box_x, _yy, _data.value[_p].label);
				draw_set_halign(fa_right);
				draw_text(box_x + box_inner_width, _yy, variable_global_get(string(_data.value[_p].source)));
				_yy = _yy + string_height(_data.value[_p].label) + props.content[tab_index].spacing;
			}
			
			break;
		case CONTENTTYPE.HEADING:
			draw_set_font(fnt_main);
			draw_set_halign(_data.halign);
			draw_set_valign(_data.valign);
			switch(_data.halign) {
				case fa_left: draw_text_ext(box_x, _yy, _data.value, -1, box_inner_width); break;
				case fa_center : draw_text_ext(box_x + (box_inner_width / 2), _yy, _data.value, -1, box_inner_width); break;
				case fa_right : draw_text_ext(box_x + box_inner_width, _yy, _data.value, -1, box_inner_width); break;
			}
			_yy = _yy + string_height_ext(_data.value, -1, box_inner_width) + (props.content[tab_index].spacing * 2);
			break;
		case CONTENTTYPE.TEXTS:
			draw_set_font(fnt_body);
			draw_set_halign(_data.halign);
			draw_set_valign(_data.valign);
			switch(_data.halign) {
				case fa_left: draw_text_ext(box_x, _yy, _data.value, -1, box_inner_width); break;
				case fa_center : draw_text_ext(box_x + (box_inner_width / 2), _yy, _data.value, -1, box_inner_width); break;
				case fa_right : draw_text_ext(box_x + box_inner_width, _yy, _data.value, -1, box_inner_width); break;
			}
			_yy = _yy + string_height_ext(_data.value, -1, box_inner_width) + props.content[tab_index].spacing;
			
			//show_message(string_height_ext(_data.value, 0, box_inner_width));
			break;
		case CONTENTTYPE.INPUT:
			draw_set_font(fnt_main);
			draw_set_halign(fa_center);
			draw_set_valign(fa_top);
			var _th = string_height("TEST");
			draw_set_alpha(0.2);
			draw_rectangle_color(box_x, _yy, box_x + box_inner_width, _yy + _th, c_black, c_black, c_black, c_black, 0);
			draw_set_alpha(1);
			draw_text(box_x + box_inner_width/2, _yy, keyboard_string);
			_yy = _yy + _th + props.content[tab_index].spacing;
			break;
	}
}


// Reset
draw_set_font(fnt_main);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

