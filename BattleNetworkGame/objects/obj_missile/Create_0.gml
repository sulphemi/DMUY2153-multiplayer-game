explode = false
lifetime = 60
explode_array = []

if player.p1 {
	box_x += 3
} else if !player.p1 {
	box_x -= 3
}

x_dest = ds_grid_get(obj_grid_manager.grid, box_x, box_y).x
y_dest = ds_grid_get(obj_grid_manager.grid, box_x, box_y).y