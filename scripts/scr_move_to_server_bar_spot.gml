/// scr_move_to_server_bar_spot

if !moving {
    goaltype = object_get_name(obj_server_bar_spot); 
    
    // if the goal is a server bar spot and exists, get best spot
    goal = scr_spots("getbest", obj_server_bar_spot);
    
    // GO
    scr_move_to_goal();
}
