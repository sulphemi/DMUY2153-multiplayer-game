if !obj_game_manager.game_over {
	if p1 {
		var _up_lim = 0
		var _left_lim = 0
		var _down_lim = ds_grid_height(obj_grid_manager.grid) - 1
		var _right_lim = ds_grid_width(obj_grid_manager.grid)/2 - 1
		player_movement(ord("W"), ord("A"), ord("S"), ord("D"), _up_lim, _left_lim, _down_lim, _right_lim)
	} else if !p1 {
		var _up_lim = 0
		var _left_lim = ds_grid_width(obj_grid_manager.grid)/2
		var _down_lim = ds_grid_height(obj_grid_manager.grid) - 1
		var _right_lim = ds_grid_width(obj_grid_manager.grid) - 1
		player_movement(vk_up, vk_left, vk_down, vk_right, _up_lim, _left_lim, _down_lim, _right_lim)
	}
}

move_hitbox()

move_character()

if life <= 0 {
	obj_grid_manager.stop_game = true
	obj_game_manager.game_over = true
	if p1 {
		obj_grid_manager.game_over = 1
	}
	if !p1 {
		obj_grid_manager.game_over = 0
	}
}