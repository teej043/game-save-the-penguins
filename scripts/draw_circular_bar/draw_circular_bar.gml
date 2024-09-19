// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function									draw_circular_bar(_x, _y, _val, _max, _color, _rad, _alpha, _w)
/// @description								draw a circular bar
/// @param {real} _x							center x
/// @param {real} _y							center y
/// @param {real} _val 							current value
/// @param {real} _max							max value
/// @param {real} _color						Colour
/// @param {real} _rad							Angle
/// @param {real} _alpha						Transparency
/// @param {real} _w							Width of the bar


function draw_circular_bar(_x, _y, _val, _max, _color, _rad, _alpha, _w){
	/// draw_circular_bar(x ,y ,value, max, colour, radius, transparency, width)

	if (_val > 0) { // no point even running if there is nothing to display (also stops /0
	    var _i, _len, _tx, _ty, _v;
    
	    var _numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
	    var _sizeofsection = 360/_numberofsections
    
	    _v = (_val/_max) * _numberofsections 
    
	    if (_v > 1) { // HTML5 version doesnt like triangle with only 2 sides 
    
	        var _piesurface = surface_create(_rad*2,_rad*2)
            
	        draw_set_colour(_color);
	        draw_set_alpha(_alpha);
        
	        surface_set_target(_piesurface)
        
	        draw_clear_alpha(c_blue,0.7)
	        draw_clear_alpha(c_black,0)
        
	        draw_primitive_begin(pr_trianglefan);
	        draw_vertex(_rad, _rad);
        
	        for(_i=0; _i<=_v; _i++) {
	            _len = (_i*_sizeofsection)+90; // the 90 here is the starting angle
	            _tx = lengthdir_x(_rad, _len);
	            _ty = lengthdir_y(_rad, _len);
	            draw_vertex(_rad+_tx, _rad+_ty);
	        }
        
	        draw_primitive_end();
        
	        draw_set_alpha(1);
        
	        gpu_set_blendmode(bm_subtract);
	        draw_set_colour(c_black);
	        draw_circle(_rad-1, _rad-1,_rad-_w,false);
	        gpu_set_blendmode(bm_normal);

	        surface_reset_target();
     
	        draw_surface(_piesurface,_x-_rad, _y-_rad);
        
	        surface_free(_piesurface);
        
	    }
    
	}
}