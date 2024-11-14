if player_one.life <= 0 || player_two.life <= 0 || obj_game_manager.game_timer <= 0 {
	game_over = true
	if player_one.life <= 0 {
		game_over = 0
	}
	if player_two.life <= 0 {
		game_over = 1
	}
	if player_one.life == player_two.life {
		game_over = 2
	}
}