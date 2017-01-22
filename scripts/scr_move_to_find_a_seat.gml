/// scr_move_to_find_a_seat

if !moving {
    goaltype = object_get_name(obj_seat); 
    
    // if the goal is a seat and myseat is not set, get best seat
    if (!myseat || !instance_exists(myseat)) {
        goal = scr_spots("getbest", obj_seat);
        // instance doesn't exist anymore / reset myseat
        myseat = "";    
        scr_spots("update", obj_seat);
        
    // else if the goal is YOUR seat, go back to seat
    } else if (myseat && instance_exists(myseat)) { 
        goal = myseat;
    }    
    
    // GO
    scr_move_to_goal();
}
