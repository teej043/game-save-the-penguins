/// @description Insert description here
// You can write your code in this editor

var _o = instance_create_depth(x, y, depth, obj_flag, {
	is_stunned: true,
	direction: other.direction
});

with (_o) {
	alarm[0] = 60*3;
}

instance_destroy(my_shadow);