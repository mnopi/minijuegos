var roomNumber = global.roomNumber;
    var leaderboard;
    
    var google_lbds;
    google_lbds[0]= "CgkI78705N4VEAIQEg";
    google_lbds[1]= "CgkI78705N4VEAIQEw";
    google_lbds[2]= "CgkI78705N4VEAIQFA";
    google_lbds[3]= "CgkI78705N4VEAIQFQ";
    google_lbds[4]= "CgkI78705N4VEAIQFg";
    google_lbds[5]= "CgkI78705N4VEAIQFw";
    google_lbds[6]= "CgkI78705N4VEAIQGA";
    google_lbds[7]= "CgkI78705N4VEAIQGQ";
    google_lbds[8]= "CgkI78705N4VEAIQGg";
    
    
    
    var rooms_lvl;
    rooms_lvl[11]=0;
    rooms_lvl[12]=1;
    rooms_lvl[13]=2;
    rooms_lvl[17]=3;
    rooms_lvl[18]=4;
    rooms_lvl[19]=5;
    rooms_lvl[23]=6;
    rooms_lvl[24]=7;
    rooms_lvl[25]=8;
    var lvl = rooms_lvl[room];
    if(os_type == os_android)
    {
        leaderboard = google_lbds[lvl];
    }else if ( os_type == os_ios )
        {
            leaderboard="Jolly_Sweets_Level_" + string(lvl+1);
        }
return leaderboard;
