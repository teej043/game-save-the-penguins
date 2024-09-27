// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_pause_toggle(_show_dialog = true){
	if (room == rm_game) {
		
		if (global.game_state == GAME_STATE.RUNNING) {
			global.game_state = GAME_STATE.PAUSED;
			
			audio_sound_gain(snd_bg_main,0.2,500);
		
			if !instance_exists(dialog_pause) && _show_dialog {
				gui_dialog_pause();
			}
		
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
				
				audio_sound_gain(snd_bg_main,0.6,500);
			
				if instance_exists(dialog_pause) && _show_dialog {
					instance_destroy(dialog_pause);
				}
			
				for (var _i = 0; _i < array_length(arr_alarms); _i++) {
					try {
						var _instance = arr_alarms[_i]._instance;
						var _alarm_i = arr_alarms[_i]._index;
						var _val = arr_alarms[_i]._value;
					
						_instance.alarm[_alarm_i] = _val;
					} catch(_exception) {}
				}
			
				for (var _i = 0; _i < array_length(arr_speed); _i++) {
					try {
						var _instance = arr_speed[_i]._instance;
						var _val = arr_speed[_i]._value;
					
						_instance.speed = _val;
					} catch(_exception) {}
				}
			
			
				for (var _i = 0; _i < array_length(arr_direction); _i++) {
					try {
						var _instance = arr_direction[_i]._instance;
						var _val = arr_direction[_i]._value;
					
						_instance.direction = _val;
					} catch(_exception) {}
				}
			
				for (var _i = 0; _i < array_length(arr_image_speed); _i++) {
					try {
						var _instance = arr_image_speed[_i]._instance;
						var _val = arr_image_speed[_i]._value;
					
						_instance.image_speed = _val;
					} catch(_exception) {}
				}
			
			}
		}
	
	}
}