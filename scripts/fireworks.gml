///fireworks(x,y,size)
x_loc = argument[0]; 
y_loc = argument[1]; 
size = argument[2];
effect_create_above(ef_firework, x_loc, y_loc, size, c_yellow);
effect_create_above(ef_firework, x_loc, y_loc, size, c_white);
effect_create_above(ef_firework, x_loc, y_loc, size, c_red);
