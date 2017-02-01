///scr_load(filenumber)

game_load("Save.sav");
    
    // reset/start all customers and servers paths
    with (obj_customer) {
        if moving && !collision_rectangle(x-30, y-30, x+30, y+30, obj_toilet_spot, false, false) {
            scr_action_pause(100, "");
            scr_emotion("nopath");
        }  
    }
    
    with (obj_server) {
        if moving {
            goal.occupied = 0;
            path_end();
            path = path_add();
            scr_action_pause(10, "");
        }          
    }  

// ************** JSON **************
/*
var filenumber = argument0;
savefilename = working_directory + "Save_" + string(filenumber) + ".sav";

if file_exists(savefilename) {
}
*/
