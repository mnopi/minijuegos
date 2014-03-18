/*
localization_ru(string);

Returns: Russian translation of given string.

Arguments:
    string: Native language to translate

This is the Russian language localization file.
I realize that there are many ways you can go about doing this, from having an ID for each string, to just comparing strings, but you can modify this however you want.
Also note that my Russian isn't all that good, so don't count on me as being accurant.
*/

switch (argument0) { // Add your translations here.

    case "Play":
        return ("Играть");
        
    case "Quit":
        return ("Остановка");
        
    default:
        return ("Translation not found!"); // No translation was found, so return this.
}
