/// scr_state_waitforstall
if !global.gamepause {
    wantstoleave += 0.03;
    haswaited += 1/room_speed;
    image_index = 0;
    
    timerspritecounter += 0.2;
    if timerspritecounter > 7 { timerspritecounter = 0; }
    
    if (instance_exists(mytoiletfront) && mytoiletfront.toiletspotid.occupied == 0) {
        state = scr_state_none;
        scr_move_to_stall();
    }
    
    else if !instance_exists(mytoiletfront) {
        scr_action_pause(50, "The toilet just disappeared! SPOOKY!"); 
    }
    
    else if (wantstoleave > 100){
        scr_action_pause(50, "Too much waiting, I'm OUT.");
    }
}
