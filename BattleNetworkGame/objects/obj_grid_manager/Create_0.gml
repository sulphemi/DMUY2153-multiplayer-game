x_inc = 130			//x increment for boxes
y_inc = 80			//y increment for boxes
grid_width = 8		//number of grid columns
grid_height = 4		//number of grid rows

x_start = room_width/8 + 65		//initial starting x position for boxes
y_start = room_height/2.25		//initial starting y position for boxes

//Used for box creation on grid
box_x = x_start		//x of each box
box_y = y_start		//y of each box

grid = ds_grid_create(grid_width, grid_height)		//ds_grid array for box storage

//creating the box grid 
for(var _h = 0; _h < grid_height; _h++) {
	for(var _w = 0; _w < grid_width; _w++) {
		_temp_box = instance_create_depth(box_x, box_y, 5, obj_grid_box)
		if _w < 4 {
			_temp_box.default_image = spr_grid_box_p1
		} else {
			_temp_box.default_image = spr_grid_box_p2
		}
		_temp_box.sprite_index = _temp_box.default_image
		ds_grid_set(grid, _w, _h, _temp_box)
		box_x += x_inc
	}
	box_x = x_start
	box_y += y_inc
}

//Create player 1
player_one = instance_create_depth(ds_grid_get(grid, 0, 0).x, ds_grid_get(grid, 0, 0).y, 1, obj_char_one)
player_one.p1 = true

//Create player 2
player_two = instance_create_depth(ds_grid_get(grid, 7, 0).x, ds_grid_get(grid, 7, 0).y, 1, obj_char_one, 
	{
		p1: false
	});
player_two.box_x = 7
player_two.box_y = 0
player_two.x_dest = ds_grid_get(grid, player_two.box_x, player_two.box_y).x	
player_two.y_dest = ds_grid_get(grid, player_two.box_x, player_two.box_y).y
player_two.x = player_two.x_dest
player_two.y = player_two.y_dest

