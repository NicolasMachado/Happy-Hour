/// scr_state_drink

if !obj_controller.gamepause {
    // drinking
    thirst += obj_controller.drinks[3, mydrink];
    bladder += obj_controller.drinks[4, mydrink];
    wantstoleave -= 0.07;
    
    // drinking speed
    hasadrink -= obj_controller.drinks[5, mydrink];
    
    if hasadrink < 0 { 
        hasadrink = 0; 
        scr_action_pause(50, "Done with my drink.");
    }
}
