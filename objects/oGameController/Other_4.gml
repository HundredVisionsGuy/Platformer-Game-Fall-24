/// @description Insert description here
// You can write your code in this editor

// Stop any sounds from a previous room (in case of a room restart)
audio_stop_all();

// Play background music loop with a priority of 100.
audio_play_sound(sndMusicLoop, 100, true);