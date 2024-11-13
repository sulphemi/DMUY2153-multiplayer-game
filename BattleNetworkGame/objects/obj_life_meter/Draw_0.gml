var x1 = x - BAR_MAXWIDTH / 2;
var x2 = x + BAR_MAXWIDTH / 2;
var y1 = y - BAR_THICKNESS / 2;
var y2 = y + BAR_THICKNESS / 2;

var life_percentage = player.life / player.max_life;
if (life_percentage < 0){
	life_percentage = 0;
}

var red = lerp(255, 0, life_percentage);
var green = lerp(0, 255, life_percentage);
var bar_color = make_color_rgb(red, green, 0);

draw_set_color(bar_color);
draw_rectangle(x1, y1, x1 + life_percentage * BAR_MAXWIDTH, y2, false);

draw_set_color(c_white);
draw_rectangle(x1, y1, x2, y2, true);