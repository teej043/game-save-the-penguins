// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gui_dialog_highscore(){
	dialog_highscore = instance_create_layer(0,0,"GUI_layer", obj_gui);

	with (dialog_highscore) {
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
					value: "Your score is high enough to be on the rankings, great job. What is your name?",
					vpadding: 5,
				},{
					type: CONTENTTYPE.INPUT,
					value: "player_name"
				}]
			}],
			actions: [
			{
				inactive: false,
				sprite: spr_btn,
				label: "Submit",
				padding: 15,
				trigger: fn_pause,
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