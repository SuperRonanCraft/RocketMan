image_speed = 0;
image_index = 0;
ScreenShake(10, 60);
audio_play_sound(snDeath, 10, false);
SetGameSpeed(25);
with (oCamera)
	follow = other.id;