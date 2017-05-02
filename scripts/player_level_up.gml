///player_level_up()

PlayerStats.talents += 2;
instance_create(Player.x, Player.y, obj_level_up);
audio_play_sound(snd_level_up, 10, false);

Player.image_blend = c_green;
Player.alarm[4] = 15;
