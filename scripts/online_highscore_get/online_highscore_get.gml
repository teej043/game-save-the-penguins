// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function online_highscore_get(){
	
	if (global.token != "") {
		global.req_getscores = http_get($"{HIGHSCORE_URL}/{HIGHSCORE_GAMEID}/?_fields=acf.scores");
	}

}