if (file_exists("Save.ini")){

ini_open("Save.ini");
if(instance_exists(PlayerStats)){
//if(room != rm_menu){
    ini_write_real("Player","Max HP", PlayerStats.max_hp);
    ini_write_real("Global","Kills", global.kills); 
    ini_write_real("Player","Talents", PlayerStats.talents); 
    ini_write_real("Player","Crit_Chance", PlayerStats.crit_chance);
    ini_write_real("Player","Agility", PlayerStats.agility);
    ini_write_real("Player", "Dexterity", PlayerStats.dexterity);
    ini_write_real("Player", "Aim", PlayerStats.aim);
//    }
}
ini_close();
} 
