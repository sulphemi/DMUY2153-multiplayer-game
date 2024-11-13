if (outerbar_width == 0) {
	exit;	
}

draw_set_alpha(0.5);
draw_set_color(c_white);
draw_rectangle(x - outerbar_width / 2, y + player.sprite_height / 2, x + outerbar_width / 2, y + player.sprite_height / 2 + BAR_THICKNESS, 0);
draw_set_alpha(1.0);

draw_set_color(c_yellow);
draw_rectangle(x - t1_width / 2, y + player.sprite_height / 2, x + t1_width / 2, y + player.sprite_height / 2 + BAR_THICKNESS, 0);
draw_set_color(c_orange);
draw_rectangle(x - t2_width / 2, y + player.sprite_height / 2, x + t2_width / 2, y + player.sprite_height / 2 + BAR_THICKNESS, 0);
draw_set_color(c_red);
draw_rectangle(x - t3_width / 2, y + player.sprite_height / 2, x + t3_width / 2, y + player.sprite_height / 2 + BAR_THICKNESS, 0);
draw_set_color(c_white);