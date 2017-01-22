/// scr_move_to_goal()
  
// if the path to whatever the goal is exists and if the goal exists
if (instance_exists(goal) && mp_grid_path(global.grid, path, x, y, goal.x+16, goal.y+16, 1) && goal != ""){ 

    // if the goal is a seat, lock it
    if (goaltype == "obj_seat" && !myseat) {
            // remember my seat for future reference
            myseat = goal;
            myseat.occupied = 1;
            scr_spots("update", obj_seat);
    }  

    // if the goal is a toilet front, lock it
    else if (goaltype == "obj_toilet_front" && !mytoiletfront) {
            // remember my seat for future reference
            mytoiletfront = goal;
            mytoiletfront.occupied = 1;
            scr_spots("update", obj_toilet_front);
    }  
    
    // if the goal is a server bar spot or table server spot or wander point, lock it
    else if (goaltype == "obj_server_bar_spot" || goaltype == "obj_server_table_spot" || goaltype == "obj_wander_point") {
            goal.occupied = 1;
            if (mycurrentspot != "" && instance_exists(mycurrentspot)) { mycurrentspot.occupied = 0; }
            mycurrentspot = goal;
            scr_spots("update", obj_server_bar_spot);
    }  
    
    // path setup + go
    path_set_kind(path, 1);
    path_set_precision(path, 8);
    path_start(path, spd, path_action_stop, true);
    
    moving = true;
    state = scr_state_none;
    
} else {
    // if path doesn't exist or goal disappeared
    if iam = "customer" {
        wantstoleave += 10;
        scr_emotion("nopath");
        scr_UI_message_box(12);
    }
    scr_action_pause(100, "I can't reach my goal!");
}
