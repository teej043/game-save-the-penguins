// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function online_highscore_get(){
	
	if (global.token != "") {
		
		//var _headers = ds_map_create();
		
		
		//if (os_get_config() == "Default") {
		//	ds_map_add(_headers, "Content-Type", "application/json");
		//	ds_map_add(_headers, "Origin", "https://127.0.0.1:51264");
		//	ds_map_add(_headers, "Host", "127.0.0.1:51264");
		
		//} else {
		//	ds_map_add(_headers, "Content-Type", "application/json");
		//	ds_map_add(_headers, "Origin", $"http://{HIGHSCORE_HOST}");
		//	ds_map_add(_headers, "Host", HIGHSCORE_HOST);
		//}
		
		//var _body = {
		//	_fields: "acf.scores"
		//};
		
		//global.req_getscores = http_request($"{HIGHSCORE_URL}/{HIGHSCORE_GAMEID}", "GET", _headers, json_stringify(_body));
		
		
		global.req_getscores = http_get($"{HIGHSCORE_URL}/{HIGHSCORE_GAMEID}/?_fields=acf.scores");
	}

}