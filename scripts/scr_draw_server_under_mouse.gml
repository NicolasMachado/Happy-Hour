/// scr_draw_server_under_mouse()

// MOVE THIS BLOCK TO CLICK BUTTON!
if view_visible[1] {view_visible[1] = false;}
if obj_controller.selected != "" {obj_controller.selected = "";}

// ALL
// sprite string construction
sprite = sprite_get_name(object_get_sprite(obj_controller.selecteditem));
sprite = asset_get_index(sprite);

sprwidth = (sprite_get_width(sprite) - sprite_get_xoffset(sprite)*2);
sprheight = (sprite_get_height(sprite) - sprite_get_yoffset(sprite)*2);

//snap
sprx = floor((mouse_x+32)/32)*32-16;
spry = floor((mouse_y+48)/32)*32-16;
    
// set transparency color according to collision
if collision_rectangle(sprx-5, spry-5, sprx + 5, spry + 5, obj_toavoid, false, false) {
    var color = c_red;
    obj_controller.placeable = false;
} else {
    var color = c_white;
    obj_controller.placeable = true;
}

// draw sprite under mouse
draw_sprite_ext(sprite, 0, sprx, spry, 1, 1, 0, color, 0.5);
