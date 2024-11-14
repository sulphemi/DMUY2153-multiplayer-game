NUM_SNOWFLAKES = 100;

xvals = [];
yvals = [];
vxvals = [];
vyvals = [];
svals = [];

for (var _i = 0; _i < NUM_SNOWFLAKES; _i++) {
    xvals[_i] = random(room_width);
    yvals[_i] = random(room_height);
    vxvals[_i] = random_range(1.1, 1.3);
    vyvals[_i] = random_range(2.1, 2.6);
    wvals[_i] = random(30);
    svals[_i] = random_range(0.5, 4);
}