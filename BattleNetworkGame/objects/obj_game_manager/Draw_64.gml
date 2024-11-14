if room == rm_start {
	draw_set_color(c_white);
	draw_set_font(fnt_big);
	draw_text(150,200,"Player1");
	draw_text(1000,200,"Player2");

	draw_set_font(fnt_big);
	draw_text(100,400,"WSAD to move");
	draw_text(100,450,"SPACE to shoot");

	if(not p1_ready){
		draw_set_color(c_red);
		draw_text(150,550,"NOT READY");
	}else{
		draw_set_color(c_green);
		draw_text(150,550," READY");
	}

	if(not p2_ready){
		draw_set_color(c_red);
		draw_text(950,550,"NOT READY");
	}else{
		draw_set_color(c_green);
		draw_text(950,550," READY");
	}

	draw_set_color(c_white);
	draw_text(900,400,"Arrow keys to move");
	draw_text(900,450,"Right SHIFT to shoot");
}
if room == rm_game {
	draw_set_font(fnt_timer)
	draw_set_halign(fa_center)
	
	if game_timer > 0 {
		draw_text(room_width/2, 100, floor(game_timer/60))
	} else {
		draw_text(room_width/2, 100, 0)
	}
}