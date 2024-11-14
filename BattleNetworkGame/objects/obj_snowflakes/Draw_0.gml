draw_set_color(c_white);
draw_set_alpha(0.6);
for (var _i = 0; _i < NUM_SNOWFLAKES; _i++) {
    draw_rectangle(xvals[_i], yvals[_i], xvals[_i] + svals[_i], yvals[_i] + svals[_i], 0);
}

draw_set_alpha(1.0);