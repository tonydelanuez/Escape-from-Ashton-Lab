///get_path_to_player()
if(instance_exists(Player)){
    var xx = (Player.x div CELL_WIDTH)*CELL_WIDTH+CELL_WIDTH/2;
    var yy = (Player.y div CELL_HEIGHT)*CELL_HEIGHT+CELL_HEIGHT/2;
    
    if(mp_grid_path(Level.grid_path, path, x, y, xx, yy, true)) {

        path_start(path, global.enemyspeed, path_action_stop, false);
    }
}

