if os_is_network_connected()
   {
    if (os_type == os_ios || os_type == os_android)
    
        {
                
            if achievement_available()
                {
               
                achievement_post(argument0,100);
             
              
                }
        }
    }
