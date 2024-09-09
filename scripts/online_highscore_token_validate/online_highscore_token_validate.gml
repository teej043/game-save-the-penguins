// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function online_highscore_token_validate(){
	
	if (global.token != "") {
		var _headers_jwt = ds_map_create();
		ds_map_add(_headers_jwt, "Authorization", $"Bearer {global.token}");
		ds_map_add(_headers_jwt, "Content-Type", "application/json");
		// ds_map_add(_headers_jwt, "Host", HIGHSCORE_HOST);
		global.req_token_validate = http_request($"{HIGHSCORE_JWT_URL}validate", "POST", _headers_jwt, json_stringify(_data_jwt));
	}
	
}
