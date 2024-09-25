/// @description Insert description here
// You can write your code in this editor

temp_layer = layer_create(-10000);
filter = fx_create("_filter_screenshake");
layer_set_fx(temp_layer, filter);
fx_set_parameter(filter, "g_Magnitude", magnitude);
fx_set_parameter(filter, "g_ShakeSpeed", shakespeed);

alarm[0] = duration;