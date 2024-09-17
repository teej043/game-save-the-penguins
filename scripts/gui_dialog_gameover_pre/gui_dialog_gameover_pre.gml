// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gui_dialog_gameover_pre(){
	dialog_gameover = instance_create_layer(0,0,"GUI_layer", obj_gui);
	
	var _trigger_fn = function () {
		game_check_online_highscore();
		if instance_exists(dialog_gameover) {
			instance_destroy(dialog_gameover);
		}
	}

	with (dialog_gameover) {
		props = {
			sprite : spr_btn,
			width : 450,
			height: 400,
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
					value: "You lost the penguins",
					vpadding: 5,
				},
				{
					type: CONTENTTYPE.TEXTS,
					height: 0,
					halign: fa_center,
					valign: fa_top,
					value: "You and your penguin line collapsed. You ski is beyond repair, your penguins are captured. Game over.",
					vpadding: 5,
				}]
			}],
			actions: [
			{
				inactive: false,
				sprite: spr_btn,
				label: "Okay",
				padding: 15,
				trigger: _trigger_fn,
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