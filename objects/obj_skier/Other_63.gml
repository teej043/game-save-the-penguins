/// @description Insert description here
// You can write your code in this editor


var _d = ds_map_find_value(async_load, "id");


// On playername input request
if (_d == msg_scorer_name)
{
    if (ds_map_find_value(async_load, "status"))
    {
        if (ds_map_find_value(async_load, "result") != "")
        {
			// Add playername to highscore
            highscore_add(ds_map_find_value(async_load, "result"), score);
			// Go back to menu screen
			room_goto(rm_menu);
        } else {
			highscore_add("Anon", score);
			room_goto(rm_menu);
		}
    }
}