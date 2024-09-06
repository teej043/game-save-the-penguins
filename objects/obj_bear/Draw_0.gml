/// @description Insert description here
// You can write your code in this editor

draw_sprite(sprite_index, image_index, x, y);

if VISUAL_DEBUG {
	
draw_text(x, y+40, string(hp));
draw_text(x, y+60, string(target));
draw_text(x, y+80, string(instance_exists(target)));

}