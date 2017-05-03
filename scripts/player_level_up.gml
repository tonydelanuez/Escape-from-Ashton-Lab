///player_level_up()

PlayerStats.talents += 2;
instance_create(Player.x, Player.y, obj_level_up);
effect_create_above(ef_ring, Player.x, Player.y, 2, c_orange);
effect_create_above(ef_firework, Player.x, Player.y, 1, c_orange); 
effect_create_above(ef_firework, Player.x, Player.y, 1, c_yellow);
effect_create_above(ef_firework, Player.x, Player.y, 1, c_white);
audio_play_sound(snd_levelup, 10, false);

Player.image_blend = c_green;
Player.alarm[4] = 15;
