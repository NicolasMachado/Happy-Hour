/// scr_move_out_of_stall()

if !moving {
    if instance_exists(mytoiletfront) {
    
        moving = true;
        goal = mytoiletfront;
        goaltype = "obj_toilet_front";
        if (mp_linear_path_object(path, mytoiletfront.x+16, mytoiletfront.y+16, spd, obj_wall)) {  
            mytoiletfront.toiletspotid.occupied = 0;
            mytoiletfront = "";         
            path_start(path, spd, path_action_stop, false);
        } else {
            scr_move_out_of_stall();
        }
        
    } else {
        scr_action_pause(50, "nopath");
        show_debug_message("Stuck in bathroom");
    }
}
