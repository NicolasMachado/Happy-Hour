/// scr_move_to_wander
if !moving {  
    pause = true;
    var randx = round(x+irandom_range(-125, 100));
    var randy = round(y+irandom_range(-125, 100));
    
    // if random point is free, set goal
    if mp_grid_path(obj_grid.grid,path,x,y,randx,randy,true) && !collision_point(randx, randy, obj_toavoid, false, false) {
        goal = instance_create(randx, randy, obj_wander_point);
        goaltype = object_get_name(goal.object_index);
        scr_move_to_goal();
    } else {
        scr_action_pause(10, "Can't find random spot");
    }
}
