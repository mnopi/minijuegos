/*
string_localize(language,string);

Returns: Localized string.

Arguments:
    language: The language code to translate into. See more about language codes in the GM manual here: http://docs.yoyogames.com/index.html?page=source%2Fdadiospice%2F002_reference%2Foperating%20system%2Fos_get_language.html
    string: The string to translate.
    
*/

//if (global.language==global.language_native) {
if (global.language=="en") {
    return (argument1); // No translation needed.
}

switch (argument0) { // Your non-native translation scripts can be referenced here.

    case "es":
        return (localization_es(argument1)); // Return the Spanish translation.
        
    case "pt-br":
        return (localization_pt_br(argument1)); // Return the Brazilian portuguese translation.
        
    case "ru":
        return(localization_ru(argument1)); // Return the Russian translation.

}

