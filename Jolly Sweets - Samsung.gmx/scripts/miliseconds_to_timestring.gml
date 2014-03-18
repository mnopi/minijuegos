var seconds = string(floor((argument0 mod 60)));
if string_length(seconds) = 1
    {
    seconds= '0' + seconds;
    }
var minutes = string(floor((argument0 / 60 ) mod 60));
if string_length(minutes) = 1
    {
    minutes= '0' + minutes;
    }
return minutes + ':' + seconds;
