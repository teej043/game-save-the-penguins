// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function gui_dialog_pause(){
	dialog_pause = instance_create_layer(0,0,"GUI_layer", obj_gui);

	with (dialog_pause) {
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
					value: "Paused",
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
				label: "Resume",
				padding: 15,
				trigger: fn_escape,
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
				trigger: global.ft_test,
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