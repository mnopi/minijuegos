var level = global.level;
var sound = global.sound;

if (sound)
    audio_play_sound(snd_button,1,false);

if (level == 19)
    room_goto(niveles_algodon);
else if (level == 23)
    room_goto(niveles_algodon_2);
else if (level > 23)
    room_goto(niveles_algodon_3);
