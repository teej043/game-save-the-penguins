/// @description Insert description here
// You can write your code in this editor

//depth = -y;

with(my_shadow) {
	x = other.x;
	y = other.y;
}

if !is_stunned {
	if instance_exists(target) {
	
		mp_potential_step_object(target.x, target.y,speed,obj_boulder);
	}
	
}
