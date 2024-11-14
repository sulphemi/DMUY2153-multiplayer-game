/// @description Insert description here
// You can write your code in this editor
var x_offset = -35; // Move left by 10 pixels
var y_offset = -40; // Move up by 15 pixels

// Draw the sprite at the adjusted position
draw_sprite_ext(sprite_index, image_index, x + x_offset, y + y_offset, image_xscale, image_yscale, image_angle, image_blend, image_alpha);