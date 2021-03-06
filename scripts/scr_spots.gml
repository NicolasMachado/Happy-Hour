/// scr_spots(string, obj)

// argument0: "update" (updates globals related to object), "getbest" (returns the best spot or "" if none found)
// argument1: the script will iterate through all the spot objects passed as argument1

var action = argument0, obj = argument1, size = 0, bestavspot = "", nbspots = instance_number(obj), spot, countunreachable = 0;

// GET BEST
if action == "getbest" {
    // if there is at least one spot on the map
    if (nbspots > 0) {
        // create priority list
        var listspots = ds_priority_create();
        
        // scan through all instances, keep only ones that are free AND accessible
        for (i = 0; i < nbspots; i++) {
            spot = instance_find(obj, i);
            
            // if accessible...
            if spot.activated && mp_grid_path(obj_grid.grid, obj_controller.spawner.path, obj_controller.spawner.x, obj_controller.spawner.y, spot.x+16, spot.y+16, 1) {
                if !spot.reachable {
                    spot.reachable = 1;
                }
                // ... and free
                if !spot.occupied {
                    if obj == obj_seat { ds_priority_add(listspots, spot, spot.comfort); }
                    else if obj == obj_toilet_front { ds_priority_add(listspots, spot, -distance_to_object(spot) - spot.toiletspotid.occupied*1000); }
                    else if obj == obj_server_bar_spot { ds_priority_add(listspots, spot, -distance_to_object(spot)); }
                    else if (obj == obj_server_table_spot && spot.tableID == customertoserve.myseat.tableID) { ds_priority_add(listspots, spot, -distance_to_object(spot)); }
                }
            } 
            if !mp_grid_path(obj_grid.grid, obj_controller.spawner.path, obj_controller.spawner.x, obj_controller.spawner.y, spot.x+16, spot.y+16, 1) {
                countunreachable += 1;
                if spot.reachable {
                    spot.reachable = 0;
                }
            }
        }
        
        // if list empty
        if !ds_priority_empty(listspots) {
            bestavspot = ds_priority_find_max(listspots);
        }
        size = ds_priority_size(listspots); 
        ds_priority_destroy(listspots);
    }     
    
    // UPDATE GLOBALS
    if obj == obj_seat {
        obj_controller.nbseats = nbspots - countunreachable;
        obj_controller.unreachableseats = countunreachable;
        obj_controller.nboccseats = obj_controller.nbseats - size;
        obj_controller.nbfreeseats = size;
    } else if obj == obj_toilet_front  {
        obj_controller.nbtoiletseats = nbspots - countunreachable;
        obj_controller.unreachabletoiletseats = countunreachable;
        obj_controller.nbocctseats = obj_controller.nbtoiletseats - size;
        obj_controller.nbfreetseats = size; 
    } else if obj == obj_server_bar_spot  {
        obj_controller.nbbarspots = nbspots - countunreachable;
        obj_controller.unreachablebarspots = countunreachable;
        obj_controller.nboccbarspots = obj_controller.nbbarspots - size;
        obj_controller.nbfreebarspots = size; 
    }  
    return bestavspot;
}

// UPDATE
if action == "update" {
    if nbspots == 0 {
        if obj == obj_seat {
            obj_controller.nboccseats = 0;
            obj_controller.nbfreeseats = 0;
        }
        
    } else {
        // create list
        var listspots = ds_list_create();
        
        // scan through all instances, keep only ones that are free AND accessible
        for (i = 0; i < nbspots; i++) {
            var spot = instance_find(obj, i);
            // if reachable...
            if mp_grid_path(obj_grid.grid, obj_controller.spawner.path, obj_controller.spawner.x, obj_controller.spawner.y, spot.x+16, spot.y+16, 1) {
                if !spot.reachable {
                    spot.reachable = 1;
                }
                // and free
                if !spot.occupied {
                    ds_list_add(listspots, spot);
                }
            // if not reachable
            } else {
                countunreachable += 1;
                if spot.reachable {
                    spot.reachable = 0;
                }
            }    
        }
        size = ds_list_size(listspots); 
        ds_list_destroy(listspots);          
    }  

    // UPDATE GLOBALS    
    if obj == obj_seat {
        obj_controller.nbseats = nbspots - countunreachable;
        obj_controller.unreachableseats = countunreachable;
        obj_controller.nboccseats = obj_controller.nbseats - size;
        obj_controller.nbfreeseats = size; 
    } else if obj == obj_toilet_front  {
        obj_controller.nbtoiletseats = nbspots - countunreachable;
        obj_controller.unreachabletoiletseats = countunreachable;
        obj_controller.nbocctseats = obj_controller.nbtoiletseats - size;
        obj_controller.nbfreetseats = size; 
    } else if obj == obj_server_bar_spot  {
        obj_controller.nbbarspots = nbspots - countunreachable;
        obj_controller.unreachablebarspots = countunreachable;
        obj_controller.nboccbarspots = obj_controller.nbbarspots - size;
        obj_controller.nbfreebarspots = size; 
    }  
    exit;
}
