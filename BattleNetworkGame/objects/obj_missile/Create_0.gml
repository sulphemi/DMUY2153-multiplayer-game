explode = false
destroy = false
lifetime = 60
is_slowing = false;

if player.p1 {
	box_x = 6
} else if !player.p1 {
	box_x = 1
	image_xscale = -1
}

x_dest = ds_grid_get(obj_grid_manager.grid, box_x, box_y).x
y_dest = ds_grid_get(obj_grid_manager.grid, box_x, box_y).y