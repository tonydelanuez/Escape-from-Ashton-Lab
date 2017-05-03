///scr_update_player_stats(stat, option)

stat = argument[0];
option = argument[1];

//Speed Bounds
var min_spd = 2;
var max_spd = 3.6;
var speed_inc = 0.1;
//HP
var min_str = 20;
var max_str = 35;
var str_inc = 1;
//Dexterity -- backwards
var min_dex = 15;
var max_dex = 5;
var dex_inc = 1;
//Aim -- backwards
var min_aim = 4;
var max_aim = 1;
var aim_inc = .5;
//Crit -- backwards
var min_crit = 25;
var max_crit = 5;
var crit_inc = 1;


switch(stat){
    case "strength":
        if(option == "inc" && PlayerStats.talents >= 1 && PlayerStats.max_hp < max_str){
            PlayerStats.max_hp += str_inc;
            PlayerStats.hp = PlayerStats.max_hp;
            PlayerStats.talents -= 1;     
        } else if (option == "dec" && PlayerStats.max_hp > 20) {
            PlayerStats.max_hp -= str_inc;
            PlayerStats.hp = PlayerStats.max_hp;
            PlayerStats.talents += 1;
        } else {
            return false;
        }
        break;
    case "crit":
        if(option == "inc" && PlayerStats.crit_chance >= max_crit && PlayerStats.talents >= 1){
            PlayerStats.crit_chance -= crit_inc;
            PlayerStats.talents -= 1;     
        } else if (option == "dec" && PlayerStats.crit_chance < min_crit) {
            PlayerStats.crit_chance += crit_inc;
            PlayerStats.talents += 1;
        } else {
            return false;
        }
        break;
    case "agility":
        if(option == "inc" && PlayerStats.talents >= 1 && PlayerStats.agility <= max_spd){
            PlayerStats.agility += speed_inc;
            PlayerStats.talents -= 1;     
        } else if (option == "dec" && PlayerStats.agility > min_spd) {
            PlayerStats.agility -= speed_inc;
            PlayerStats.talents += 1;
        } else {
            return false;
        }
        break;
    case "dext":
        if(option == "inc" && PlayerStats.talents >= 1 && PlayerStats.dexterity >=  max_dex){
            PlayerStats.dexterity -= dex_inc;
            PlayerStats.talents -= 1;     
        } else if (option == "dec" && PlayerStats.dexterity < min_dex) {
            PlayerStats.dexterity += dex_inc;
            PlayerStats.talents += 1;
        } else {
            return false;
        }
        break;
    case "aim":
        if(option == "inc" && PlayerStats.talents >= 1 && PlayerStats.aim > max_aim){
            PlayerStats.aim -= aim_inc;
            PlayerStats.talents -= 1;     
        } else if (option == "dec" && PlayerStats.aim < min_aim) {
            PlayerStats.aim += aim_inc;
            PlayerStats.talents += 1;
        } else {
            return false;
        }
        break;
}     
return true;
