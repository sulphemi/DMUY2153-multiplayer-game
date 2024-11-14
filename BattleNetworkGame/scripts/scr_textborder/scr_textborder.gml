function draw_txt_border(xx,yy,text,col1,col2)
{
    draw_set_colour(col1);
    draw_text(xx-2,yy-2,text);
    draw_text(xx-2,yy+2,text);
    draw_text(xx+2,yy+2,text);
    draw_text(xx+2,yy-2,text);
    draw_set_colour(col2);
    draw_text(xx,yy,text);;
}