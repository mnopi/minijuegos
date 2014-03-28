// Run this script when you start the game.
var firstlan;

ini_open("SaveGame.sav");
firstlan = ini_read_string("Settings","Language","new");
ini_close();
if (firstlan == "new")
{
    global.language_native="en"; // This is the language your in-GameMaker text is written in.
    
    
    global.language=os_get_language(); // Get the current user language.
    
    if (global.language!="en" && global.language!="es" && global.language!="pt-br" && global.language!="ru") { // This is where we check if the user's language is supported.
        global.language=global.language_native; // The user's language isn't supported, so just use the one most familiar to us.
    }
}
else
    global.language = firstlan;
// If you want, you could add code to save this information to be loaded later.

