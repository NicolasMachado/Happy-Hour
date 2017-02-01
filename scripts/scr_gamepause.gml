/// pause unpause the game

// IF PAUSE
if !obj_controller.gamepause {
    obj_controller.gamepause = true;
    obj_button_pause.tooltiptext = "The game is paused";  
    // freeze animation and record path position
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
    obj_controller.gamepause = false;    
    obj_button_pause.tooltiptext = "Pause#Currently OFF";
    // Reanimate characters
    with (obj_server) {
        image_speed = imgspd;
    }
    with (obj_customer) {
        image_speed = imgspd;
    }
}
