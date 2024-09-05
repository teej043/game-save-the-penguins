/// @description Insert description here
// You can write your code in this editor

if (ds_map_find_value(async_load, "id") == global.req_token) {
    var _status = async_load[? "status"];
    var _r_str = (_status == 0) ? async_load[? "result"] : "null";
	
	var _temp = json_parse(_r_str);
	
	if (_temp != "null") {
		global.token = _temp.token;
		// show_message($"request token posted. server response is: {global.token}");
	}
}


if (ds_map_find_value(async_load, "id") == global.req_getscores)
{
    var _status = async_load[? "status"];
    var _r_str = (_status == 0) ? async_load[? "result"] : "null";
	
	var _temp = json_parse(_r_str);
	
	if (struct_exists(_temp, "acf"))
	{

		// Check if it's a struct
		if (is_struct(_temp.acf))
		{
			
		    // Print all struct members to the log
		    var _scores = struct_get_names(_temp.acf);
			
			
			global.scores = _temp.acf.scores;
			
			/*
			if (array_length(global.scores)) {
				for (var _i = 0; _i < array_length(global.scores); _i++;) {
					show_message($"Player named {global.scores[_i].name} has scored {global.scores[_i].value}");
				}
			}
			*/
		}
	}
}


if (ds_map_find_value(async_load, "id") == global.req_postscores) {
    var _status = async_load[? "status"];
    var _r_str = (_status == 0) ? async_load[? "result"] : "null";
	
	var _temp = json_parse(_r_str);
	
	if (_temp != "null") {
		// show_message($"request posted. server response is: {_temp}");
	}
}

