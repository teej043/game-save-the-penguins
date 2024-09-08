/// @description Insert description here
// You can write your code in this editor


distance_call_help = 500;

// Create the tracker arrow

my_tracker = instance_create_depth(0, 0, -200, obj_arrow, {
	target: other.id
});


my_fx = noone;

if is_stunned {
	my_fx = instance_create_depth(x, y-50, depth, obj_fx);
	with (my_fx) {
		will_persist = true;
		sprite_index = spr_fx_fainted;
		image_speed = 0.25;
		depth = other.depth;
	}
}


alarm[1] = 30;