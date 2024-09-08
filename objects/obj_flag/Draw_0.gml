/// @description Insert description here
// You can write your code in this editor

// The flag

if (!is_stunned) {
	draw_sprite_ext(sprite_index, image_index, x,y,1,1,0,c_white,1);
} 

// Draw shadow
draw_sprite_ext(spr_shadow, image_index, x,y+5,1,1,0,c_white,1);

// Penguin
draw_sprite_ext(spr_penguin, image_index, x,y+5,1,1,0,c_white,1);


