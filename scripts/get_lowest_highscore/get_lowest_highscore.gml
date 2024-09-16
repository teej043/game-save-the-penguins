// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_lowest_highscore(){
	var _lowest_score = 0;
	
	if is_array(global.scores) {
		var _scores  = global.scores;
		var _n = array_length(_scores);
		if _n {
			var _arr = multi_sort_by_score(_scores);
			global.scores = _arr;
			// _lowest_score = global.scores[_n - 1].value;
			_lowest_score = _arr[_n - 1].value;		
		}
	}
	
	return _lowest_score;
}