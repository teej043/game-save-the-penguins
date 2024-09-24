// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_menu_pause(_x, _y, _width, _height){
	
	//var _data = global.scores;
	//var _n = array_length(_data);
	var _row = 0;
	var _txh = 30;
	
	draw_set_halign(fa_left);
	draw_text(_x, _y + (_txh * 1), "Penguins saved");
	draw_text(_x, _y + (_txh * 2), "Bears knocked out");
	draw_text(_x, _y + (_txh * 3), "Penguins lost");
	draw_text(_x, _y + (_txh * 4), "Times crashed");
	
	
	draw_set_halign(fa_right);
	draw_text(_x + _width, _y + (_txh * 1), $"{global.score}");
	draw_text(_x + _width, _y + (_txh * 2), $"{global.knockedout_enemies}");
	draw_text(_x + _width, _y + (_txh * 3), $"{global.lost_flags}");
	draw_text(_x + _width, _y + (_txh * 4), $"{global.crashes}");
	
	/*
	if (_n) {
		
		for(_i = 0; _i < _n; _i++) {
			
			for(_p = 0; _p < 3; _p++) {
				
				draw_set_halign(fa_left);
				draw_text(_x, _y + (_i * 30), _data[_i].name);
			
				draw_set_halign(fa_right);
				draw_text(_x + _width, _y + (_i * 30), _data[_i].value);
			
			}
			
		}
		
	}*/
	
	draw_set_halign(fa_left);

}