/// scr_state_drink

if !global.gamepause {
    // drinking
    thirst += global.drinks[3, mydrink];
    bladder += global.drinks[4, mydrink];
    wantstoleave -= 0.07;
    
    // drinking speed
    hasadrink -= global.drinks[5, mydrink];
    
    if hasadrink < 0 { 
        hasadrink = 0; 
        scr_action_pause(50, "Done with my drink.");
    }
}
