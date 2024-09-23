/// @description Add to knocked out enemies, spawn another
// You can write your code in this editor

global.knockedout_enemies +=1; 
instance_destroy(my_shadow);
instance_destroy(my_fx);
spawn_random(obj_bear, 0, true);