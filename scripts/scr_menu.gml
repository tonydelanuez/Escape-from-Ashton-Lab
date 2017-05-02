///scr_menu()
switch(mpos)
{ 
    case 0: 
    {
        room_goto(rm_one);
        break; 
        
    }
    case 2: 
    { 
        room_goto(rm_one);
        break;
    }
    case 1:
    {
        game_end();
        break;
    }
    default:
        break;
} 


