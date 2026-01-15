if (keyboard_check_pressed(ord("Z")) && !fade_ativo) {
    fade_ativo = true;
    fade_timer = 0;
    audio_play_sound(snd_osm, 1, false);
}

if (fade_ativo) {
    fade_timer++;

    // alpha cresce proporcional ao tempo
    fade_alpha = fade_timer / fade_tempo;
    fade_alpha = clamp(fade_alpha, 0, 1);

    if (fade_timer >= fade_tempo) {
        room_goto(rm_proxima);
    }
}
