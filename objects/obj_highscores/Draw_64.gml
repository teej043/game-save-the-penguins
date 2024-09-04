/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_main);
draw_sprite_ext(box_spr, 0, box_x, box_y, box_spr_scalex, box_spr_scaley,0,-1,1);
draw_text(x,y-100,box_width);

draw_highscore(xx, yy, xx + box_width, yy + box_height);