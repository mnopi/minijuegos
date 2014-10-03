// Run this script when you start the game.

    global.language_native="en"; // This is the language your in-GameMaker text is written in.
    
    
    global.language=os_get_language(); // Get the current user language.
    var language = os_get_language();
    var first = string_char_at(language, 1); 
    var second = string_char_at(language, 2);
    
   switch(first+second)
   {
        case "pt":
                    {
                        global.language= "pt-br";
                        break;
                    }
        case "es":{
                        global.language= "es";
                        break;
                    }
       case "en":
                   {
                     global.language= "en";
                     break;
                   }
   }
 /*  if (language == "pt")
   {
     global.language= "pt-br";
    }*/
    if (global.language!="en" && global.language!="es" && global.language!="pt-br") { // This is where we check if the user's language is supported.
        global.language=global.language_native; // The user's language isn't supported, so just use the one most familiar to us.
    }
