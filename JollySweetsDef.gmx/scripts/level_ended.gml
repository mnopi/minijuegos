    global.grajeas = score;
var google_leaderboards;
google_leaderboards[0]= "CgkI78705N4VEAIQEg";
google_leaderboards[1]= "CgkI78705N4VEAIQEw";
google_leaderboards[2]= "CgkI78705N4VEAIQFA";
google_leaderboards[3]= "CgkI78705N4VEAIQFQ";
google_leaderboards[4]= "CgkI78705N4VEAIQFg";
google_leaderboards[5]= "CgkI78705N4VEAIQFw";
google_leaderboards[6]= "CgkI78705N4VEAIQGA";
google_leaderboards[7]= "CgkI78705N4VEAIQGQ";
google_leaderboards[8]= "CgkI78705N4VEAIQGg";




var rooms_level;
rooms_level[11]=0;
rooms_level[12]=1;
rooms_level[13]=2;
rooms_level[17]=3;
rooms_level[18]=4;
rooms_level[19]=5;
rooms_level[23]=6;
rooms_level[24]=7;
rooms_level[25]=8;
ini_open("SaveGame.sav");
var number = ini_read_real("Levels","Number",0);
var time_in_seconds = global.time_in_room;
var current_punt;
var c_time;
var level = rooms_level[room];
current_punt = ini_read_real("Score", "Beans level "+string(level), 0);
if (current_punt <= score)
    ini_write_real("Score", "Beans level "+string(level), score);
//analytics_event("Level 4 completed_iOS");

if (os_type == os_ios)
    {
      analytics_event("Level "+ string(level+1)  +" completed_iOS");  
    }
else if(os_type == os_android)
    {
     analytics_event("Level "+string(level+1)+ " completed");
    }
    

c_time = ini_read_real("Time", "Beans level "+string(level), 0);
if(c_time ==0 || time_in_seconds <= c_time)
{
     ini_write_real("Time", "Beans level "+string(level), time_in_seconds);
     if (os_type == os_ios)
     {
     push_score("Jolly_Sweets_Level_" + string(level+1),  time_in_seconds);
     }else if (os_type == os_android)
     {
        if(level<=8)
        {
            push_score(google_leaderboards[level],  time_in_seconds*1000);
           
        }
     }
}

switch(level)
{
    case 0:
    {
     
       
       push_achievement("CgkI78705N4VEAIQAw");
       push_achievement("CgkI78705N4VEAIQHw");
     
     break;
    }
    case 2:
    {
     
       
        push_achievement("CgkI78705N4VEAIQBA");
        push_achievement("CgkI78705N4VEAIQIA");
     
     break;
    }
    case 4:
    {
        push_achievement("CgkI78705N4VEAIQIg");
    }
    case 5:
    {
     
        
        push_achievement("CgkI78705N4VEAIQBQ");
        push_achievement("CgkI78705N4VEAIQIQ");
     
     break;
    }
    case 8:
    {   
       
       push_achievement("CgkI78705N4VEAIQBg");
       push_achievement("CgkI78705N4VEAIQIw");
     
     break;
    }
}

var beans = 0;
for (var l = 0; l<9; l++)
{
    beans += ini_read_real("Score", "Beans level "+string(l), 0);
    
}
if(beans >= 450)
{
 
     push_achievement("CgkI78705N4VEAIQBw");
     
}

if(beans == 900)
{
    
     push_achievement("CgkI78705N4VEAIQHQ");
     
}



/*if (room > number)
{
    global.level = room;
    ini_write_real("Levels","Number",room);
}*/

ini_close();

room_goto(paso_de_fase);
