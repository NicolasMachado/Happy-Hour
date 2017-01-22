/// scr_move_to_destroy
if !moving {    
    if iam = "customer" {
        // RESET SEATS
        if (instance_exists(myseat) && myseat) { myseat.occupied = 0; myseat = ""; scr_spots("update", obj_seat);}
        if (instance_exists(mytoiletfront) && mytoiletfront) { mytoiletfront.toiletspotid.occupied = 0; mytoiletfront.occupied = 0; mytoiletfront = ""; scr_spots("update", obj_toilet_front);}
        
        goal = mydestroyer;
        goaltype = object_get_name(goal);
           
        // GO
        scr_move_to_goal();
        
        // remove order from list
        var ordertoremove = ds_list_find_index(obj_controller.orderslist, id);
        if !is_undefined(ordertoremove){
            ds_list_delete(obj_controller.orderslist, ordertoremove);
        }
    } else if iam = "server" {
        if (instance_exists(mycurrentspot) && mycurrentspot) { mycurrentspot.occupied = 0; mycurrentspot = "";}
    
    
    
        goal = obj_customer_destroyer_l;
        goaltype = object_get_name(goal);
           
        // GO
        scr_move_to_goal();
    
    }
}

