///scr_money_trade(x, y, amount, reason)

with (instance_create(argument0,argument1, obj_trade)) {
    amount = argument2;
    reason = argument3;
    global.money += amount; 
    
    // sound
    if amount > 0 {
        // 3D sound
        audio_play_sound_on(emitter_id,snd_chaching,false,1);
    }
}

// if player not doing well, give money once
if global.money < -500 {   
    scr_UI_message_box(3);
    scr_UI_message_box(4);
}
