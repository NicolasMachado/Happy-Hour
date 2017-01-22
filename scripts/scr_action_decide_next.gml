///scr_action_decide_next()
moving = false;

// GET INTENTION!
intention = scr_action_select_intention();

// **************** INTENTION == DRINK ****************
if intention == "drink" {

    // if SEAT reached with a drink
    if (instance_exists(myseat) && myseat && myseat.activated && position_meeting(x, y, myseat) && hasadrink > 0 && !waitingfordrink) {
        //thtoreach = thirst + 20; // thirst + score of current drink, defines the ceiling to stop drink action
        state = scr_state_drink;
        
    // if SEAT reached without a drink but has ordered
    } else if (instance_exists(myseat) && myseat && myseat.activated && position_meeting(x, y, myseat) && hasadrink == 0 && waitingfordrink) {
        state = scr_state_waitfordrink;
        
    // if SEAT reached without a drink and hasn't ordered yet   
    } else if (instance_exists(myseat) && myseat && myseat.activated && position_meeting(x, y, myseat) && hasadrink == 0 && !waitingfordrink) {
        alarm[0] = 100;
        
        // Adding order to the orders list in controller
        ds_list_add(obj_controller.orderslist, id);
        waitingfordrink = true;
        scr_emotion("waiting");
        state = scr_state_pause;        
        
        
    // else if seat assigned but not reached
    } else if (instance_exists(myseat) && myseat && myseat.activated && !position_meeting(x, y, myseat)) {
        scr_move_to_find_a_seat();
    } else {
        // if not at seat and no seat assigned, check if seat exists and is free       
        if scr_spots("getbest", obj_seat) {
            scr_move_to_find_a_seat();
            client = true;
        }
        // else leave (no seat)
        else {
            wantstoleave = 101;
            scr_move_to_destroy();
        }
    }   
}

// **************** INTENTION == TOILET ****************
if (intention == "toilet") {
    // if not a client, leave
    if !myseat {
        scr_move_to_destroy();
    } else {
        // If on the toilet
        if (mytoiletfront && instance_exists(mytoiletfront) && position_meeting(x, y, mytoiletfront.toiletspotid)) {
            state = scr_state_toilet;  
            
        // if front reached
        } else if (mytoiletfront && instance_exists(mytoiletfront) && position_meeting(x, y, mytoiletfront))  { 
        
            // if toilet occupied, wait
            if mytoiletfront.toiletspotid && mytoiletfront.toiletspotid.occupied == 1 {
                state = scr_state_waitforstall;  
                
            // if toilet free, move into stall             
            } else if mytoiletfront.toiletspotid && mytoiletfront.toiletspotid.occupied == 0 {
                scr_move_to_stall();
            }
            
        // if front assigned but not reached             
        } else if (mytoiletfront && instance_exists(mytoiletfront) && !position_meeting(x, y, mytoiletfront)) {
                scr_move_to_find_a_toilet_spot();
        } else {
        
            // if not at toilet front and no toilet front assigned, check if front exists and is free       
            if scr_spots("getbest", obj_toilet_front) {
                scr_move_to_find_a_toilet_spot();
            }
            
            // else leave (no toilet seat)
            else {
                wantstoleave = 101;
                
                global.leftnotoilet++;
                scr_move_to_destroy();
            }
        }
    }
}

// **************** INTENTION == LEAVE ****************
if intention == "leave" {
    scr_move_to_destroy();
}

// **************** INTENTION == FIRED  ****************
if (intention == "fired") { 
    scr_move_to_destroy();     
}
