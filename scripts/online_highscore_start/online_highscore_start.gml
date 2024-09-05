// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function online_highscore_start(){

	var _headers_jwt = ds_map_create();
	ds_map_add(_headers_jwt, "Content-Type", "application/json");
	ds_map_add(_headers_jwt, "Content-Length", "68");
	
	var _data_jwt = {
	    username: HIGHSCORE_USERNAME,
	    password: HIGHSCORE_PASSWORD
	}

	global.req_token = http_request(HIGHSCORE_JWT_URL, "POST", _headers_jwt, json_stringify(_data_jwt));
	
	ds_map_destroy(_headers_jwt);
}
