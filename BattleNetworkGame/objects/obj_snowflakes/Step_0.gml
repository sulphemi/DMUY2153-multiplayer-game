for (var _i = 0; _i < NUM_SNOWFLAKES; _i++) {
    xvals[_i] += vxvals[_i];
    yvals[_i] += vyvals[_i];
    if (yvals[_i] > room_height) yvals[_i] = 0;
    if (xvals[_i] > room_width) xvals[_i] = 0;
}