//throw_blades(direction)
var dir = argument[0];
audio_play_sound(snd_warning, 10, false);
if(dir = "right"){
    for(var i = 0; i < room_height; i += room_height/20){
        blade = instance_create(32, i, obj_blade);
        blade.speed = 5;
        blade.direction = 0;
        }
} else {
    for(var j = 0; j < room_height; j += room_height/20){
        blade = instance_create(room_width - 45, j, obj_blade);
        blade.speed = 5;
        blade.direction = 180;
    }
}


