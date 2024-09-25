/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index, image_index, x, y,is_facing_west ? -1 : 1, 1, 0, -1,1);

if VISUAL_DEBUG {
	
draw_text(x, y+40, string(hp));
draw_text(x, y+60, string(target));
draw_text(x, y+80, string(instance_exists(target)));

draw_text(x, y+100, $"comboed {comboed}");
draw_text(x, y+120, $"hp {hp}");
draw_text(x, y+140, $"run {is_bear_run()}");

}


