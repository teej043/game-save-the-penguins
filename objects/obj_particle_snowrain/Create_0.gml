/// @description Insert description here
// You can write your code in this editor

depth = -1000;
//part_system_create(part_snow_rain);

//part_snow_rain
var _ps = part_system_create();
part_system_draw_order(_ps, true);

//GM_Rain
var _ptype1 = part_type_create();
part_type_shape(_ptype1, pt_shape_snow);
part_type_size(_ptype1, 0.3, 0.3, 0, 0.1);
part_type_scale(_ptype1, 0.25, 0.25);
part_type_speed(_ptype1, 0.25, 0.25, 0, 0);
part_type_direction(_ptype1, 300, 300, 0, 10);
part_type_gravity(_ptype1, 0.25, 299);
part_type_orientation(_ptype1, 100, 100, 0, 0, false);
part_type_colour3(_ptype1, $F9F9FF, $FFE4DB, $FFF7F9);
part_type_alpha3(_ptype1, 1, 0.98, 0.031);
part_type_blend(_ptype1, true);
part_type_life(_ptype1, 40, 120);

var _pemit1 = part_emitter_create(_ps);
part_emitter_region(_ps, _pemit1, -600, 600, 0, 0, ps_shape_line, ps_distr_linear);
part_emitter_stream(_ps, _pemit1, _ptype1, 2);


//part_system_position(_ps, room_width/2, room_height/2);

part_system_position(_ps, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]));


