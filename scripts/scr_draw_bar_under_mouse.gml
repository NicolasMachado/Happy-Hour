/// scr_draw_table_under_mouse()

var isagainstwall = false;

// MOVE THIS BLOCK TO CLICK BUTTON!
if view_visible[1] {view_visible[1] = false;}
if obj_controller.selected != "" {obj_controller.selected = "";}

// ALL
// sprite string construction
sprite = sprite_get_name(object_get_sprite(obj_controller.selecteditem));
sprite = asset_get_index(string_replace(sprite, "_0", "_" + string(obj_controller.itemrot)));

sprwidth = (sprite_get_width(sprite) - (sprite_get_xoffset(sprite)*2));
sprheight = (sprite_get_height(sprite) - (sprite_get_yoffset(sprite)*2));
if sprwidth % 64 == 0 { var decalx = 16 } else { var decalx = 0 }
if sprheight % 64 == 0 { var decaly = 16 } else { var decaly = 0 }

//snap
sprx = floor((mouse_x - decalx - sprwidth/2 + 16 + decalx)/32)*32;
spry = floor((mouse_y - decaly - sprheight/2 + 16 + decaly)/32)*32;

// set isagainstwall
if obj_controller.itemrot == 0 
&& position_meeting(sprx-16, spry+16, obj_all_walls) 
&& position_meeting(sprx-16, spry+48, obj_all_walls) 
&& position_meeting(sprx-16, spry+80, obj_all_walls) 
&& position_meeting(sprx-16, spry+112, obj_all_walls) {
    isagainstwall = true;
} else if obj_controller.itemrot == 90 
&& position_meeting(sprx+16, spry+80, obj_all_walls) 
&& position_meeting(sprx+48, spry+80, obj_all_walls) 
&& position_meeting(sprx+80, spry+80, obj_all_walls) 
&& position_meeting(sprx+112, spry+80, obj_all_walls) {
    isagainstwall = true;
} else if obj_controller.itemrot == 180 
&& position_meeting(sprx+80, spry+16, obj_all_walls)
&& position_meeting(sprx+80, spry+48, obj_all_walls) 
&& position_meeting(sprx+80, spry+80, obj_all_walls) 
&& position_meeting(sprx+80, spry+112, obj_all_walls)  {
    isagainstwall = true;
} else if obj_controller.itemrot == 270 
&& position_meeting(sprx+16, spry-16, obj_all_walls) 
&& position_meeting(sprx+48, spry-16, obj_all_walls) 
&& position_meeting(sprx+80, spry-16, obj_all_walls) 
&& position_meeting(sprx+112, spry-16, obj_all_walls) {
    isagainstwall = true;
}
    
// set transparency color according to collision
var color = c_white;
if collision_rectangle(sprx, spry, sprx + sprwidth - 1, spry + sprheight - 1, obj_toavoid, false, false) || collision_rectangle(sprx, spry, sprx + sprwidth - 1, spry + sprheight - 1, obj_furniture_ghost, false, false)  ||  !isagainstwall || scr_item_get_price(obj_controller.selecteditem) > obj_controller.money {
    color = c_red;
    obj_controller.placeable = false;
} else {
    color = c_white;
    obj_controller.placeable = true;
}

// draw sprite under mouse
draw_sprite_ext(sprite, 0, sprx, spry, 1, 1, 0, color, 0.5);
