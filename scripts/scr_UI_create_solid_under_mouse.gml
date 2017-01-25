/// scr_UI_create_instance_under_mouse(obj)

var objtocreate = argument0;

// if the cells are free
if (global.placeable && !position_meeting(mouse_x, mouse_y, obj_button)) {

    // create the instance at snap place
    instance_create(sprx, spry, objtocreate);
    audio_play_sound(snd_thomp, 1, false);
    
    // add all similar instances to grid if furniture
    mp_grid_add_instances(global.grid, objtocreate, true);
    
    // reset/start all customers paths
    /* ****** OLD CODE
    if !global.gamepause {
        with (obj_customer) {
            if moving && !collision_rectangle(x-30, y-30, x+30, y+30, obj_toilet_spot, false, false) {
                path_end();
                if (mp_grid_path(global.grid, path, x, y, goal.x+16, goal.y+16, 1)){
                    path_start(path, spd, path_action_stop, true);
                // if path doesn't exist
                } else {
                    moving = false;
                    wantstoleave += 10;
                    scr_action_pause(random_range(10,100), "No path to my goal!");
                }
            }  
        }
    }*/
    
    // reset/start all customers and servers paths
    with (obj_customer) {
        if moving && !collision_rectangle(x-30, y-30, x+30, y+30, obj_toilet_spot, false, false) {
            path_end();
            scr_action_pause(1, "");
        }  
    }
    
    with (obj_server) {
        if moving {
            goal.occupied = 0;
            path_end();
            scr_action_pause(1, "");
        }          
    }   
    
} else {
    audio_play_sound(snd_menu_wrong, 1, 0);
    scr_UI_log_write("Can't place item here.");
}
