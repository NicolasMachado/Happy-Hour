/// scr_move_to_frontdoor
if !moving {
    goal = obj_frontdoor;
    goaltype = object_get_name(goal); 
    
    // go to nearest frontdoor instance
    goal = scr_get_nearest_instance_id(x, y, obj_frontdoor, 1);
    
    // GO
    scr_move_to_goal();
}
