// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gui_dialog_highscore(){
	dialog_highscore = instance_create_layer(0,0,"GUI_layer", obj_gui);
	
	var _trigger_fn = function() {}
	
	var _fn_submit_score = function() {
		var _score = {
			name: global.player_name,
			value: score,
			date: date_format("Ymd")
		}
		online_highscore_post(_score);
	}
	
	var _fn_post_game = function() {
		if instance_exists(dialog_highscore) {
			instance_destroy(dialog_highscore);
		}
		gui_dialog_gameover_post();
	}
	
	
	
	
	with (dialog_highscore) {
		
		// Prepare message
		var _msg = "";
		var _is_ranked = false;
	
		// Enter for highscores
		if global.highscores_retrieved {
				
			if (array_length(global.scores) >= 15 && get_lowest_highscore() >= score) {
				_msg = $"Saved {score} penguins, but not enough to get you to highscores.";
				_trigger_fn = fn_post_game;
				// _trigger_fn = function() {show_message("wah")};
				_is_ranked = false;
			} else {
				_msg = $"You have saved {score} penguins, enough to get you to rankings. What is your name?";
				_trigger_fn = _fn_submit_score;
				_is_ranked = true;
			}
					
		} else {
			_msg = $"Saved {score} penguins, unfortunately rankings is offline though, but good job anyway.";
			_trigger_fn = fn_post_game;
			_is_ranked = false;
		}
	
		props = {
			sprite : spr_btn,
			width : 450,
			height: 300,
			padding: 15,
			margin: 15,
			position: POSITION.MIDCENTER,
			offset_x: 0,
			offset_y: 0,
			content: [{
				label : "Base",
				spacing: 5,
				elements : [{
					type: CONTENTTYPE.HEADING,
					height: 0,
					halign: fa_center,
					valign: fa_middle,
					value: "Rankings",
					vpadding: 5,
				},{
					type: CONTENTTYPE.TEXTS,
					height: 0,
					halign: fa_center,
					valign: fa_middle,
					value: _msg,
					vpadding: 5,
				},{
					type: _is_ranked ? CONTENTTYPE.INPUT : CONTENTTYPE.SPACER,
					value: "player_name"
				}]
			}],
			actions: [
			{
				inactive: false,
				sprite: spr_btn,
				label: _is_ranked ? "Submit" : "Okay",
				padding: 15,
				trigger: _is_ranked ? _fn_submit_score : _fn_post_game,
				width: 0,
				height: 0,
				font: fnt_main,
				halign: fa_center,
				valign: fa_middle,
				shadow: c_dkgrey
			}]
	
		};
		
		gui_init();
	}
}