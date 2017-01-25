/// pause unpause the game
// IF PAUSE
if !global.gamepause {
    global.gamepause = true;
    obj_button_pause.tooltiptext = "The game is paused";  
    // freeze and record path position
    with (obj_server) {
        image_speed = 0;
        mypathposition = path_position;
    }
    with (obj_customer) {
        image_speed = 0;
        mypathposition = path_position;
    }
}
// IF UNPAUSE
else {
    global.gamepause = false;    
    obj_button_pause.tooltiptext = "Pause#Currently OFF";
    // Reanimate characters
    with (obj_server) {
        image_speed = imgspd;
    }
    with (obj_customer) {
        image_speed = imgspd;
    }
}
