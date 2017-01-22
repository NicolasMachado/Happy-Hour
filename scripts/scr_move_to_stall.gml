/// scr_move_to_stall()

if !moving {
    if instance_exists(mytoiletfront.toiletspotid) {
        moving = true;
        goal = mytoiletfront.toiletspotid;
        goaltype = "obj_toilet_spot";  
        if (mp_linear_path_object(path, mytoiletfront.toiletspotid.x+16, mytoiletfront.toiletspotid.y+16, spd, obj_wall)) {     
            mytoiletfront.occupied = 0;
            scr_spots("update", obj_toilet_front);
            mytoiletfront.toiletspotid.occupied = 1;
            path_start(path, spd, path_action_stop, false);
        } else {
            scr_move_to_stall();
        }
    } else {
        scr_action_pause(50, "nopath");
        show_debug_message("FUCK! Where's the bathroom gone???");
    }
}
