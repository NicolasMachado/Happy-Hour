///scr_state_none()

if !obj_controller.gamepause {
    // if stuck
    if iam = "customer" && prevx == x && prevy == y {
        stuckcounter += 1;
        
        if stuckcounter > 300 {
            stuckcounter = 0;
            show_debug_message("I just unstuck myself!!!");
            scr_action_pause(10, "");
        }
    }
    
    prevx = x;
    prevy = y;
}
