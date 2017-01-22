/// scr_UI_create_ghost_under_mouse(obj)

var objtocreate = argument0;

// if the cells are free and cursor out of menu
if (global.placeable && !position_meeting(mouse_x, mouse_y, obj_button)) {

    // create the instance at snap place
    instance_create(sprx, spry, objtocreate);
    audio_play_sound(snd_thomp, 1, false);
    
} else {
    scr_UI_log_write("Can't place item here.");
    audio_play_sound(snd_menu_wrong, 1, 0);
}
