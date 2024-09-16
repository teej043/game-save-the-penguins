// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function gui_btn_init(){
	draw_set_font(props.font);
	tw = string_width(props.label);
	th = string_height(props.label);

	tx = x + props.padding;
	ty = y + props.padding;

	btnw = tw + (props.padding * 2);
	btnh = th + (props.padding * 2);

	hovered = false;
}