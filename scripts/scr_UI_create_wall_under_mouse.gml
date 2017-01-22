/// scr_UI_create_wall_under_mouse(obj)

var objtocreate = argument0;

// if the cells are free and cursor out of menu
if (global.placeable && !position_meeting(mouse_x, mouse_y, obj_button)) {

    // create the instance at snap place
    instance_create(sprx, spry, objtocreate);
    
    // add to grid
    mp_grid_add_instances(global.grid, objtocreate, true);
    audio_play_sound(snd_thomp, 1, false);
    
    // WALL
    with (obj_wall) {
        instance_destroy();
        instance_create(x,y,obj_wall);
    }
    with (obj_wall_indesctructible) {
        instance_destroy();
        instance_create(x,y,obj_wall_indesctructible);
    }
    
    // reset/start all customers paths
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
} else {
    scr_UI_log_write("Can't place item here.");
    audio_play_sound(snd_menu_wrong, 1, 0);
}