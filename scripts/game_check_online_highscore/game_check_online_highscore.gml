// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_check_online_highscore(){
	
	show_message("wah");
	
	//// Prepare message
	var _msg = "";
	
	// Enter for highscores
	if global.highscores_retrieved {
				
		if (array_length(global.scores) >= 15 && get_lowest_highscore() >= score) {
			_msg = $"Saved {score} penguins, but not enough to get you to highscores?";
			show_message(_msg);
		} else {
			_msg = $"You have saved {score} penguins, enough to get you to rankings. What is your name?";
			// Requst for player's name
			// global.player_name = get_string_async(_msg, "Unnamed");
			gui_dialog_highscore();
			
		}
					
	} else {
		_msg = $"Saved {score} penguins, unfortunately rankings is offline though, but good job anyway.";
		show_message(_msg);
	}
}