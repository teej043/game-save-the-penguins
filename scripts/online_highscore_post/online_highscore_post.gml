// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @function						online_highscore_post(_score);
/// @description					Insert description here
/// @param _score {Struct}			The score struct including value, name and date
/// @return {bool}					Returns true when score is entered into highscore

function online_highscore_post(_score) {
	

	
	// When highscore is not full
	if (array_length(global.scores) >= HIGHSCORE_MAX) {
		
		// Sort the scores and get the last one to compare against new score
		var _arr = multi_sort_by_score(global.scores);
		var _lowest_score = global.scores[array_length(_arr) - 1].value;
		
		// When new score is higher replace last one
		if (_score.value > real(_lowest_score)) {
			array_resize(global.scores, HIGHSCORE_MAX - 1);
			array_push(global.scores, _score);
		} else {
			return false;
		}
	} else {
		array_push(global.scores, _score);
	}
	
	// Proceed to posting to online
	if (global.token != "") {
	
		var _data = {
			acf : {
				scores : multi_sort_by_score(global.scores)
			}
		};

		var _headers = ds_map_create();
		ds_map_add(_headers, "Authorization", $"Bearer {global.token}");
		ds_map_add(_headers, "Content-Type", "application/json");


		/*
		show_message(ds_map_find_value(_headers, "Authorization"));
		show_message(ds_map_find_value(_headers, "Content-Type"));
		show_message(json_stringify(_data));
		*/
	
	
		global.req_postscores = http_request($"{HIGHSCORE_URL}/{HIGHSCORE_GAMEID}", "POST", _headers, json_stringify(_data));

		ds_map_destroy(_headers);
			
		return true;
	}


	return false;

}