/// @description Insert description here
// You can write your code in this editor

draw_set_font(props.font);

if (props.width > 0) {
	draw_sprite_stretched(props.sprite, 0, x, y, props.width, props.height);
} else {
	draw_sprite_stretched(props.sprite, 0, x, y, btnw, btnh);
}


if props.shadow {
	draw_text_color(tx+1, ty +1, props.label,props.shadow, props.shadow, props.shadow, props.shadow, 1);
}

if (props.width > 0) {
	draw_text_color(tx, hovered ? ty - 1 : ty , props.label, -1, -1, -1, -1, 1);
} else {
	draw_text_color(tx, hovered ? ty - 1 : ty, props.label, -1, -1, -1, -1, 1);
}