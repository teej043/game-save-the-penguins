/// @description Insert description here
// You can write your code in this editor

particle_system = part_system_create_layer("Weather", 0);


particle_snow = part_type_create();
part_type_shape(particle_snow, pt_shape_sphere);
part_type_size(particle_snow, 0.2, 0.5, 0, 0.1);
part_type_scale(particle_snow, 0.25, 0.25);
part_type_speed(particle_snow, 0.01, 0.05, 0, 0);
part_type_direction(particle_snow, 300, 300, 0, 1);
part_type_gravity(particle_snow, 0.03, 283);
part_type_orientation(particle_snow, 100, 100, 0, 0, false);
part_type_colour3(particle_snow, $F9F9FF, $FFE4DB, $FFF7F9);
part_type_alpha3(particle_snow, 1, 0.98, 0.031);
part_type_blend(particle_snow, true);
part_type_life(particle_snow, 40, 260);

particle_snow_cloud = part_type_create();


cam_w = camera_get_view_width(view_camera[0]);
cam_h = camera_get_view_height(view_camera[0]);
row = ceil(room_width / cam_w);
col = ceil(room_height / cam_h);

show_debug_message($"{cam_w}, {cam_h}, {row}, {col}");

for (var _i = 0; _i < row; _i++) {
	
	for (var _p = 0; _p < col; _p++) {
		var _xx = cam_w * _i;
		var _yy = cam_h * _p;
		show_debug_message($"{_xx}, {_yy}");
		instance_create_layer(_xx, _yy, "Weather", obj_particle_snow);
	}
}
