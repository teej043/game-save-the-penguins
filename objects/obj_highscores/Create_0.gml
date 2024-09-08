/// @description Insert description here
// You can write your code in this editor

box_spr = spr_btn;
box_width = 350;
box_height = 400;
box_padding = 15;


x = (display_get_gui_width() / 2);
y = (display_get_gui_height() / 2);
xx = x - (box_width / 2);
yy = y - (box_height / 2) - 50;

box_x = xx - box_padding;
box_y = yy - box_padding;

box_spr_scalex = ((box_width + (box_padding * 2)) * 100 / sprite_get_width(box_spr)) * 0.01;
box_spr_scaley = ((box_height + (box_padding * 2)) * 100 / sprite_get_height(box_spr)) * 0.01;

depth = -200;