///draw_text_shadow(x,y,string,color,font)

dist = (font_get_size(argument4) / 12);

draw_set_font(argument4);

draw_set_color(merge_color(argument3, c_black, 0.5));
draw_text(argument0+dist,argument1+dist,argument2);
draw_set_color(argument3);
draw_text(argument0,argument1,argument2);
