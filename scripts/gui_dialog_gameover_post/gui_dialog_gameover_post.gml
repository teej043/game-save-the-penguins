// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gui_dialog_gameover_post(){
	dialog_gameover = instance_create_layer(0,0,"GUI_layer", obj_gui);

	var _trigger_fn = function () {
		if instance_exists(dialog_gameover) {
			instance_destroy(dialog_gameover);
		}
		room_goto(rm_menu);
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
					value: "Game Over",
					vpadding: 5,
				},
				{
					type: CONTENTTYPE.DETAILS,
					height: 0,
					value: [{
						label: "Bears ko'ed" ,
						source: "knockedout_enemies"
					},{
						label: "Crashes",
						source: "crashes"
					}]
				}]
			}],
			actions: [
			{
				inactive: false,
				sprite: spr_btn,
				label: "Game Menu",
				padding: 15,
				trigger: _trigger_fn,
				width: 0,
				height: 0,
				font: fnt_main,
				halign: fa_center,
				valign: fa_middle,
				shadow: c_dkgrey
			},
			{
				inactive: false,
				sprite: spr_btn,
				label: "Quit",
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