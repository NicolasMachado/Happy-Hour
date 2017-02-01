/// scr_save(file number)

game_save("Save.sav");

// ************** JSON **************


/*
var filenumber = argument0;
savefilename = working_directory + "Save_" + string(filenumber) + ".sav";

if file_exists(savefilename) {
    file_delete(savefilename);
}

var savefile = file_text_open_write(savefilename);

for (var i = 0; i < instance_number(obj_table); i++) {
    var instance = instance_find(obj_table, i);
    
    var instancemap = ds_map_create();
    
    // add variables to map
    ds_map_add(instancemap, "name", instance.name);
    ds_map_add(instancemap, "x", instance.x);
    ds_map_add(instancemap, "y", instance.y);
    ds_map_add(instancemap, "price", instance.price);
    ds_map_add(instancemap, "itemnumber", instance.itemnumber);
    ds_map_add(instancemap, "sprite_index", instance.sprite_index);
    ds_map_add(instancemap, "id", instance.id);
    ds_map_add(instancemap, "depth", instance.depth);
    ds_map_add(instancemap, "image_speed", instance.image_speed);
    
    // convert into JSON
    var JSONInstance = json_encode(instancemap);
    
    file_text_write_string(savefile, JSONInstance);
    file_text_write_string(savefile, "|");
}

// close file
file_text_close(savefile);

ds_map_destroy(instancemap);
*/
