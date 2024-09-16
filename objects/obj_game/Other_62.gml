/// @description Insert description here
// You can write your code in this editor

// TODO: Improve highscore integration security by either
// Remove expiration for JWT 
// or save JWT to local storage
// instead of always requesting for token

if (ds_map_find_value(async_load, "id") == global.req_token_validate) {
    var _status = async_load[? "status"];
    var _r_str = (_status == 0) ? async_load[? "result"] : "null";
	
	// If there is a response
	if (_r_str != "null") {
		var _resp = json_parse(_r_str);
	
		show_debug_message($"_resp.code: {_resp.code}");
		show_debug_message($"_resp.data.status: {_resp.data.status}");
			
		if (_resp.code == "jwt_auth_valid_token") {
			show_debug_message("token is valid");
			global.is_token_valid = true;
		}
		
	} else {
		
		var _error = async_load[? "result"]; 
		
		try {
			if (_error != "") {
			
				show_debug_message($"error response: {async_load[? "result"]}");
			
				var _resp = json_parse(_error);
		
				// There was error response.
				if (_resp.code == "jwt_auth_invalid_token") {
					show_debug_message($"message: {_resp.message}");
			
					show_debug_message("token is invalid");
					global.is_token_valid = false;
				
					show_debug_message("request new token");
					online_highscore_token_request();
				}
			}
		}
		catch(error) {
			show_debug_message($"unhandled exception: {error}");
					show_debug_message("api not reachable");
		global.highscores_unreachable = true;
		}
		
	}
}


if (ds_map_find_value(async_load, "id") == global.req_token) {
    var _status = async_load[? "status"];
    var _r_str = (_status == 0) ? async_load[? "result"] : "null";
	
	if (_r_str != "null") {
		
		var _resp = json_parse(_r_str);
	
		show_debug_message(_resp);
		
		if (!struct_exists(_resp,"token")) {
			// no token data
			show_debug_message("_resp.token does not exist");
			exit;
		} else {
			show_debug_message("_resp.token does exist");
		}	
		
		// save token for later use
		ini_open("conf.ini");
		ini_write_string("tokens", "jwt", _resp.token);
		ini_close();
		
		global.token = _resp.token;
		
		
		// show_message($"request token posted. server response is: {global.token}");
	} else {
		
		// no response or sent wrong credentials, 
		// check username and password if correct
		show_debug_message("api not reachable");
		global.highscores_unreachable = true;
	}
}


if (ds_map_find_value(async_load, "id") == global.req_getscores)
{
    var _status = async_load[? "status"];
    var _r_str = (_status == 0) ? async_load[? "result"] : "null";
	
	if (_r_str != "null") {
		var _temp = json_parse(_r_str);
	
		if (struct_exists(_temp, "acf"))
		{

			// Check if it's a struct
			if (is_struct(_temp.acf))
			{
			
				// Print all struct members to the log
				var _scores = struct_get_names(_temp.acf);
			
				global.scores = _temp.acf.scores;
				global.highscores_retrieved = true;
			
			}
		}
		global.highscores_unreachable = false;
	} 
	else {
		show_debug_message("api not reachable");
		global.highscores_unreachable = true;
		global.highscores_retrieved = false;
	}
	
}


if (ds_map_find_value(async_load, "id") == global.req_postscores) {
    var _status = async_load[? "status"];
    var _r_str = (_status == 0) ? async_load[? "result"] : "null";

	if (_r_str != "null") {
		var _temp = json_parse(_r_str);
		show_debug_message($"request posted. server response is: {_temp}");
	} else {
		show_debug_message("api not reachable");
		global.highscores_unreachable = true;
	}
}




