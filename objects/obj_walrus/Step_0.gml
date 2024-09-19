/// @description Insert description here
// You can write your code in this editor



direction = point_direction(x,y, obj_skier.x, obj_skier.y);

image_index = floor((direction % 360) / (360 / sprite_get_number(sprite_index)));