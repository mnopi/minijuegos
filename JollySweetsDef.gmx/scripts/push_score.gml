//Debe estar abierto el fichero SaveGame.sav
if os_is_network_connected()
   {
    if (os_type == os_ios || os_type == os_android)
    
        {
    
            if (!achievement_login_status())
    
               {
    
               achievement_login();
    
               }
    
            
            if achievement_available()
                {
               
                achievement_post_score(argument0, argument1);
              
                }
        }
    }
