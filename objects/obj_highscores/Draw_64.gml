/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_main);
draw_set_halign(fa_left);
draw_sprite_ext(box_spr, 0, box_x, box_y, box_spr_scalex, box_spr_scaley, 0,-1,1);

draw_online_highscore(xx, yy, box_width, box_height);