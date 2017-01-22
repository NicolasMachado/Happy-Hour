/// scr_state_toilet

// drinking
bladder -= 0.5; 
wantstoleave -= 0.07;
thirst -= 0.1;

if (bladder < 1) {
    state = scr_state_none;
    moving = false;
    scr_move_out_of_stall();
}

if !instance_exists(mytoiletfront) {
    scr_action_pause(50, "The toilet just disappeared! SPOOKY!");     
}

// animation
ii += imgspd/1.8;
if ii >= 3 { ii = 0 }
image_index = ii;
