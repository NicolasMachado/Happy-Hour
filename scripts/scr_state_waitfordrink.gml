/// scr_state_waitfordrink

wantstoleave += 0.03;
haswaited += 1/room_speed;
image_index = 0;

timerspritecounter += 0.25;
if timerspritecounter > 7 { timerspritecounter = 0; }

if wantstoleave > thirstceiling-thirst {
    wantstoleave = 101;
    scr_action_pause(10, "I've been waiting for too long, I'm out!");
    global.leftwaitedtoolong++;
    exit;   
}

if (hasadrink > 0 || wantstoleave > 100 || !instance_exists(myseat)){
    scr_action_pause(50, "");
    exit;
}
