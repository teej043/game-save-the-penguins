/// @description Insert description here
// You can write your code in this editor

for (var _i =0; _i < array_length(props.content[tab_index].elements); _i++) {
	var _data = props.content[tab_index].elements[_i];
	switch(_data.type) {
		case CONTENTTYPE.DETAILS:
			break;
		case CONTENTTYPE.HEADING:
			break;
		case CONTENTTYPE.TEXTS:
			break;
		case CONTENTTYPE.INPUT:

			if string_length(keyboard_string) > 12
			{
			    keyboard_string = string_copy(keyboard_string, 1, 12);
				variable_global_set(_data.value, keyboard_string);
			}
			break;
	}
}