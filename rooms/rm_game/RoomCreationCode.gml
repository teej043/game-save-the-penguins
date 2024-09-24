// Reinitialize

global.score = 0;
global.attained_flags = 0;
global.knockedout_enemies = 0;
global.crashes = 0;
global.lost_flags = 0;


// Play background music
//audio_stop_sound(snd_bg_main);
//audio_sound_gain(snd_bg_main,1,0);

audio_play_sound(snd_bg_main,50,true,0.6)
audio_play_sound(snd_ambient_arctic,40,true,0.4)

