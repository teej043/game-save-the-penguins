/// @description Insert description here
// You can write your code in this editor

if (browser_width != bw || browser_height !=bh) {

	bw = browser_width;
	bh = browser_height;
	window_set_size(bw, bh);
	window_center();
}


if (keyboard_check_pressed(vk_escape)) {
	
	if (global.game_state == GAME_STATE.RUNNING) {
		global.game_state = GAME_STATE.PAUSED;
		
		for (var _i = 0; _i < instance_count; _i++) {
			var _instance = instance_id_get(_i);
			
			for (var _alarm_i = 0; _alarm_i < 10; _alarm_i++) {
				var _val = _instance.alarm[_alarm_i];
				
				if (_val >= 0) {
					add_alarm(_instance, _alarm_i, _val);
				}
			}
			
			if (_instance.speed > 0) {
				add_speed(_instance, _instance.speed);
			}
			
			
			add_direction(_instance, _instance.direction);
			
			if (_instance.image_speed > 0) {
				add_image_speed(_instance, _instance.image_speed);
			}
			
		}
	}
	else 
	{
		if (global.game_state == GAME_STATE.PAUSED) {
			global.game_state = GAME_STATE.RUNNING;
			
			for (var _i = 0; _i < array_length(arr_alarms); _i++) {
				try {
					var _instance = arr_alarms[_i]._instance;
					var _alarm_i = arr_alarms[_i]._index;
					var _val = arr_alarms[_i]._value;
					
					_instance.alarm[_alarm_i] = _val;
				} catch(_exception) {
					// do nothing
					show_debug_message(_exception);
				}
			}
			
			for (var _i = 0; _i < array_length(arr_speed); _i++) {
				try {
					var _instance = arr_speed[_i]._instance;
					var _val = arr_speed[_i]._value;
					
					_instance.speed = _val;
				} catch(_exception) {
					// do nothing
					show_debug_message(_exception);
				}
			}
			
			
			for (var _i = 0; _i < array_length(arr_direction); _i++) {
				try {
					var _instance = arr_direction[_i]._instance;
					var _val = arr_direction[_i]._value;
					
					_instance.direction = _val;
				} catch(_exception) {
					// do nothing
				}
			}
			
			for (var _i = 0; _i < array_length(arr_image_speed); _i++) {
				try {
					var _instance = arr_image_speed[_i]._instance;
					var _val = arr_image_speed[_i]._value;
					
					_instance.image_speed = _val;
				} catch(_exception) {
					// do nothing
				}
			}
			
			
		}
	}
}