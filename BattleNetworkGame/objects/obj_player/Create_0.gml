charge_timer = 0
hitbox = 0
mana = 0

char_spd = 0.5		//spd at which a character moves to another box
box_x = 0		//x index for current box player is on
box_y = 0		//y index for current box player is on
x_dest = ds_grid_get(obj_grid_manager.grid, box_x, box_y).x		//x coordinate of destination box
y_dest = ds_grid_get(obj_grid_manager.grid, box_x, box_y).y		//y coordinate of destination box
x = x_dest
y = y_dest

move_ver = false
move_hor = false

in_action = false

function player_movement(_up, _left, _down, _right, _up_lim, _left_lim, _down_lim, _right_lim){
	if !in_action {
		if keyboard_check_pressed(_up) && box_y > _up_lim {
				in_action = true
				y_dest = ds_grid_get(obj_grid_manager.grid, box_x, box_y - 1).y
				box_y -= 1
		}
		if keyboard_check_pressed(_left) && box_x > _left_lim {
				in_action = true
				x_dest = ds_grid_get(obj_grid_manager.grid, box_x - 1, box_y).x
				box_x -= 1
		}
		if keyboard_check_pressed(_down) && box_y < _down_lim {
				in_action = true
				y_dest = ds_grid_get(obj_grid_manager.grid, box_x, box_y + 1).y
				box_y += 1
		}
		if keyboard_check_pressed(_right) && box_x < _right_lim {
				in_action = true
				x_dest = ds_grid_get(obj_grid_manager.grid, box_x + 1, box_y).x
				box_x += 1
		}
	}
}

function move_character(){
	y = lerp(y, y_dest, char_spd)
	x = lerp(x, x_dest, char_spd)
	
	if point_distance(x, y, x, y_dest) < 0.1 {
		in_action = false
	}
	if point_distance(x, y, x_dest, y) < 0.1 {
		in_action = false
	}
}

function move_hitbox(){
	hitbox.x = ds_grid_get(obj_grid_manager.grid, box_x, box_y).x
	hitbox.y = ds_grid_get(obj_grid_manager.grid, box_x, box_y).y
}