/// @description Insert description here
// You can write your code in this editor

if (ds_map_find_value(async_load, "id") == sprite_gameover)
{
    if (ds_map_find_value(async_load, "status") >= 0)
    {
        is_sprite_gameover = true;
    }
}


if (ds_map_find_value(async_load, "id") == sprite_poster)
{
    if (ds_map_find_value(async_load, "status") >= 0)
    {
        is_sprite_poster = true;
    }
}