///shake()
degree = argument[0];
//Shake the screen
if(degree == "big"){
    //obj_camera.x = lerp(obj_camera.x, obj_camera.x + random_range(-10,10), 2);
    //obj_camera.y = lerp(obj_camera.y, obj_camera.y + random_range(-10,10), 2);
    obj_camera.x += random_range(-2,2);
    obj_camera.y += random_range(-2,2);
} else if (degree == "small"){
    //obj_camera.x = lerp(obj_camera.x, obj_camera.x + random_range(-5,5), 1);
    //obj_camera.y = lerp(obj_camera.y, obj_camera.y + random_range(-5,5), 1);
    obj_camera.x += random_range(-1, 1);
    obj_camera.y += random_range(-1, 1);
}

