// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gui_init(){

	cx = 0;
	cy = 0;
	bw = display_get_gui_width();
	bh = display_get_gui_height();

	switch(props.position) {
		case POSITION.TOPLEFT : 
			x = cx + props.margin;
			y = cy + props.margin;
			break;
		case POSITION.TOPCENTER :
			x = cx + bw/2 - (props.width / 2);
			y = cy + props.margin;
			break;
		case POSITION.TOPRIGHT :
			x = cx + bw - props.margin - props.width;
			y = cy + props.margin;
			break;
		case POSITION.MIDLEFT : 
			x = cx + props.margin;
			y = cy + bh/2 - (props.height / 2);
			break;
		case POSITION.MIDCENTER :
			x = cx + bw/2 - (props.width / 2);
			y = cy + bh/2 - (props.height / 2);
			break;
		case POSITION.MIDRIGHT :
			x = cx + bw - props.margin - props.width;
			y = cy + bh/2 - (props.height / 2);
			break;
		case POSITION.BOTLEFT : 
			x = cx + props.margin;
			y = cy + (bh - props.height) - props.margin;
			break;
		case POSITION.BOTCENTER : 
			x = cx + bw/2 - (props.width / 2);
			y = cy + (bh - props.height) - props.margin;
			break;
		case POSITION.BOTRIGHT : 
			x = cx + bw - props.margin - props.width;
			y = cy + (bh - props.height) - props.margin;
			break;
		default: 
			x = cx + bw/2 - (props.width / 2);
			y = cy + bh/2 - (props.height / 2);
			break;
	}


	box_spr_scalex = ((props.width) * 100 / sprite_get_width(props.sprite)) * 0.01;
	box_spr_scaley = ((props.height) * 100 / sprite_get_height(props.sprite)) * 0.01;
	
	box_inner_width = props.width - (props.padding * 2);
	box_inner_height = props.height - (props.padding * 2);
	
	box_x = x + props.padding;
	box_y = y + props.padding;
	
	for(var _i = 0; _i < array_length(props.actions); _i++) {
		var _data = props.actions[_i];
		show_message(_data);
		var _btn = instance_create_layer(box_x, box_y + box_inner_height, "GUI_layer", obj_gui_btn)
		with (_btn) {
			props = other.props.actions[_i];
			
			gui_btn_init();
			
			if (array_length(other.buttons) > 0) {
				x = other.box_x;
			} else {
				x = (other.box_x + (other.box_inner_width/2)) - btnw/2;
			}
			
			y = (other.box_y + other.box_inner_height) - btnh;
			depth = other.depth - 1;
			
			gui_btn_init();
			show_message(props);
		}
		array_push(buttons, _btn);
		
	}

}