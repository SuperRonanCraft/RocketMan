/// @desc Footsteps
if (sprite_index == sPlayerRun) {
	audio_play_sound(choose(snFoot1, snFoot2, snFoot3, snFoot4), 1, false);
	SpawnDustParticle(2, image_xscale * 2, -1, false, false, true, true);
}