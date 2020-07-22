/// @desc Drawing the Enemy Properties.
with (oPlayer) {
	if (other.hit) {
		gpu_set_fog(true, c_white, 0, 0);
		draw_self();
		gpu_set_fog(false, c_white, 0, 0);
	}
}

draw_self();

/* Enemy's Name and Enemy's Life */
var buffer = 16,
	vY = ((y + buffer) - sprite_height) - buffer;

draw_rectangle_color(x - maxLife / 2, vY, x + maxLife / 2, vY + 3, c_red, c_red, c_red, c_red, false);
draw_rectangle_color(x - life / 2, vY, x + life / 2, vY + 3, c_lime, c_lime, c_lime, c_lime, false);
draw_rectangle_color(x - maxLife / 2, vY, x + maxLife / 2, vY + 3, c_black, c_black, c_black, c_black, true);

draw_set_font(fntCustomName);
draw_set_halign(fa_center);

draw_text_color(x - 1, vY - (font_get_size(fntCustomName) + 4), enemyName, c_black, c_black, c_black, c_black, 1);
draw_text_color(x, vY - (font_get_size(fntCustomName) + 3), enemyName, enemyNameColor, enemyNameColor, enemyNameColor, enemyNameColor, 1);