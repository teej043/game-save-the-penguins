/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_right);
draw_set_font(fnt_score);
draw_set_color(c_ltgrey);
draw_text(view_wport[0] - 10 + 1, 10 + 2, global.score);
draw_set_color(-1);
draw_text(view_wport[0] - 10, 10, global.score);
draw_set_halign(0);
draw_set_font(fnt_main);


