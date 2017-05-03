if(file_exists("Save.ini")){
    ini_open("Save.ini");
    PlayerStats.max_hp = ini_read_real("Player","Max HP", BASE_HP);
    PlayerStats.hp = PlayerStats.max_hp;
    global.kills = ini_read_real("Global","Kills", 0);
    PlayerStats.talents = ini_read_real("Player", "Talents", 0);
    PlayerStats.crit_chance = ini_read_real("Player", "Crit_Chance", BASE_CRIT);
    PlayerStats.agility = ini_read_real("Player", "Agility", BASE_SPD);
    PlayerStats.dexterity = ini_read_real("Player", "Dexterity", BASE_DEX);
    PlayerStats.aim = ini_read_real("Player", "Aim", BASE_AIM);
    ini_close();
} else { 
    //Shouldn't get here. 
    ini_open("Save.ini");
    ini_write_string("","","");
    ini_close();
} 
