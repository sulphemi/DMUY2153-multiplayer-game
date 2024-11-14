if room == rm_start {
	if(allow_ready){
		if (keyboard_check_pressed(vk_space)) {
		    p1_ready = not p1_ready;
		}

		if (keyboard_check_pressed(vk_rshift)) {
		    p2_ready = not p2_ready;
		}
	}

	if(p1_ready and p2_ready and allow_ready){
		allow_ready = false;
		alarm[0] = 120;
	}
}
if room == rm_game {
	game_timer -= 1
	if game_timer == 0 || obj_player.life <= 0 {
		game_over = true
	}
}