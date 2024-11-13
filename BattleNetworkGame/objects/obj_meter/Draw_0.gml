var x1 = x - BAR_MAXWIDTH/2;
var x2 = x + BAR_MAXWIDTH/2;
var y1 = y - BAR_THICKNESS/2;
var y2 = y + BAR_THICKNESS/2;

var mana_percentage = player.mana / 100;
var charge_percentage = player.charge_timer / 100;
if (charge_percentage > mana_percentage){
	charge_percentage = mana_percentage;
}

var charge_level1 = 0.3;
var charge_level2 = 0.6;
var charge_level3 = 0.9;




draw_set_color(c_gray);
draw_rectangle(x1, y1, x1 + mana_percentage * BAR_MAXWIDTH, y2, false);


//draw_set_alpha(0.8);
if(charge_percentage > charge_level3){
	draw_set_color(c_red);
}else if(charge_percentage > charge_level2){
	draw_set_color(c_orange);
}else if(charge_percentage > charge_level1){
	draw_set_color(c_yellow);
}else{
	draw_set_color(c_white);
}

draw_rectangle(x1, y1, x1 + charge_percentage * BAR_MAXWIDTH, y2, false);

draw_set_color(c_yellow);
draw_line_width(x1+charge_level1*BAR_MAXWIDTH, y1, x1+charge_level1*BAR_MAXWIDTH, y1+BAR_THICKNESS, 5);
draw_set_color(c_orange);
draw_line_width(x1+charge_level2*BAR_MAXWIDTH, y1, x1+charge_level2*BAR_MAXWIDTH, y1+BAR_THICKNESS, 5);
draw_set_color(c_red);
draw_line_width(x1+charge_level3*BAR_MAXWIDTH, y1, x1+charge_level3*BAR_MAXWIDTH, y1+BAR_THICKNESS, 5);



draw_set_color(c_white);
draw_rectangle(x1, y1, x2, y2, true);

draw_set_color(c_white);