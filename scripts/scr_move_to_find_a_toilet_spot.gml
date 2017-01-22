/// scr_move_to_find_a_toilet_spot

if !moving {
    goaltype = object_get_name(obj_toilet_front); 
    
    // if the goal is a toilet front and exists, get best seat
    if (!mytoiletfront || !instance_exists(mytoiletfront)) {
        goal = scr_spots("getbest", obj_toilet_front);
        // instance doesn't exist anymore / reset mysteat
        mytoiletfront = "";  
        scr_spots("update", obj_toilet_front);
        
    // else if the goal is YOUR toilet seat, go back to seat
    } else if (mytoiletfront && instance_exists(mytoiletfront)) { 
        goal = mytoiletfront;  
    }  
    // GO
    scr_move_to_goal();
}
