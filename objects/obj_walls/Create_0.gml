/// @description Insert description here
// You can write your code in this editor

show_debug_message(y + bbox_bottom);
show_debug_message(y + bbox_top);
show_debug_message(x + bbox_left);
show_debug_message(x + bbox_right);

width = bbox_right - bbox_left;
height = bbox_bottom - bbox_top;

tile = 64;

tile_num = height / tile;

show_debug_message(width);
show_debug_message(height);