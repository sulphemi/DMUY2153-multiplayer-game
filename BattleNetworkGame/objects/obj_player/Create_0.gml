charge_timer = 0
hitbox = 0
mana = 0
life = 1

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

move_pressed = false
in_action = false

function player_movement(_up, _left, _down, _right, _up_lim, _left_lim, _down_lim, _right_lim){
	if !in_action {
		if keyboard_check(_up) && box_y > _up_lim && !move_pressed {
				in_action = true
				move_pressed = true
				y_dest = ds_grid_get(obj_grid_manager.grid, box_x, box_y - 1).y
				box_y -= 1
		}
		if keyboard_check(_left) && box_x > _left_lim && !move_pressed {
				in_action = true
				move_pressed = true
				x_dest = ds_grid_get(obj_grid_manager.grid, box_x - 1, box_y).x
				box_x -= 1
		}
		if keyboard_check(_down) && box_y < _down_lim && !move_pressed {
				in_action = true
				move_pressed = true
				y_dest = ds_grid_get(obj_grid_manager.grid, box_x, box_y + 1).y
				box_y += 1
		}
		if keyboard_check(_right) && box_x < _right_lim && !move_pressed {
				in_action = true
				move_pressed = true
				x_dest = ds_grid_get(obj_grid_manager.grid, box_x + 1, box_y).x
				box_x += 1
		}
		move_pressed = false
	}
}

function move_character(){
	y = lerp(y, y_dest, char_spd)
	x = lerp(x, x_dest, char_spd)
	
	if point_distance(x, y, x, y_dest) < 10  && point_distance(x, y, x_dest, y) < 10 {
		in_action = false
	}
}

function move_hitbox(){
	hitbox.x = x
	hitbox.y = y
	/*
	hitbox.x = ds_grid_get(obj_grid_manager.grid, box_x, box_y).x
	hitbox.y = ds_grid_get(obj_grid_manager.grid, box_x, box_y).y
	*/
}

// create gui elements that go with this player
/*
var _charge_meter = instance_create_depth(x, y, -1, obj_charge_meter);
_charge_meter.player = self;
*/

var _meter = instance_create_depth(x, y, -1, obj_meter);
_meter.player = self;