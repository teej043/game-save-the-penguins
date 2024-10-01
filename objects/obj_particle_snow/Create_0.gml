/// @description Insert description here
// You can write your code in this editor

ps = obj_particle_system.particle_system;
ps_snow = obj_particle_system.particle_snow;
ps_snow_cloud = obj_particle_system.particle_snow_cloud;

x_start = x;
y_start = y;

depth = -1000;

cam_w = camera_get_view_width(view_camera[0]);
cam_h = camera_get_view_height(view_camera[0]);

emitter_snow = part_emitter_create(ps);

//emitter_snow_cloud = part_emitter_create(ps);
part_emitter_region(ps, emitter_snow, x_start, x_start + cam_w, y_start, y_start + cam_h, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(ps, emitter_snow, ps_snow, 3);

show_debug_message($"emmiter {x_start}, {y_start}, {x_start + cam_w}, {y_start + cam_h}");
//part_emitter_region(ps, emitter_snow_cloud, x_start - 20, x_start + cam_w, y_start, y_start + cam_h, ps_shape_rectangle, ps_distr_linear);
//part_emitter_stream(ps, emitter_snow_cloud, ps_snow_cloud, -2);