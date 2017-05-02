///grid_place_meeting(x,y)
var xx = argument[0];
var yy = argument[1];

// Remember our position
var xp = x; 
var yp = y; 

//Update the position for the bbox calculations 
x = xx; 
y = yy; 

// Check for x meeting
//Get access to grid, check players right bounding box divided by cell width. Converts player position to grid coordinate. 
//Converting x coordinate to cell coordinate.
var x_meeting = (Level.grid[# bbox_right div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR) || (Level.grid[# bbox_left div CELL_WIDTH, bbox_top div CELL_HEIGHT] != FLOOR);
                
//Check for y meeting
var y_meeting = (Level.grid[# bbox_right div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR) || (Level.grid[# bbox_left div CELL_WIDTH, bbox_bottom div CELL_HEIGHT] != FLOOR);

x = xp;
y = yp; 


//Return either true or false on collision
return x_meeting || y_meeting;

