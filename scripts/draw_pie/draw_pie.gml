// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function draw_pie(_x, _y, _val, _max, _color, _rad, _alpha){
	/// draw_pie(x ,y ,value, max, colour, radius, transparency)

	if (_val > 0) { // no point even running if there is nothing to display (also stops /0
	    var _i, _len, _tx, _ty, _v;
    
	    var _numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
	    var _sizeofsection = 360/_numberofsections
    
	    _v = (_val/_max) * _numberofsections 
    
	    if (_v > 1) { // HTML5 version doesnt like triangle with only 2 sides 
    
	        draw_set_colour(_color);
	        draw_set_alpha(_alpha);
        
	        draw_primitive_begin(pr_trianglefan);
	        draw_vertex(_x, _y);
        
	        for(_i=0; _i<=_v; _i++) {
	            _len = (_i*_sizeofsection)+90; // the 90 here is the starting angle
	            _tx = lengthdir_x(_rad, _len);
	            _ty = lengthdir_y(_rad, _len);
	            draw_vertex(_x+_tx, _y+_ty);
	        }
	        draw_primitive_end();
        
	    }
	    draw_set_alpha(1);
	}
}

