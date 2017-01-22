/// scr_draw_selected_under_mouse()

// ALL
// sprite string construction
sprite = sprite_get_name(object_get_sprite(global.selecteditem));
sprite = asset_get_index(string_replace(sprite, "_0", "_" + string(global.itemrot)));

sprwidth = (sprite_get_width(sprite) - sprite_get_xoffset(sprite)*2);
sprheight = (sprite_get_height(sprite) - sprite_get_yoffset(sprite)*2);
if sprwidth % 64 == 0 { var decalx = 16 } else { var decalx = 0 }
if sprheight % 64 == 0 { var decaly = 16 } else { var decaly = 0 }

//snap
sprx = floor((mouse_x - decalx - sprwidth/2 + 16 + decalx)/32)*32;
spry = floor((mouse_y - decaly - sprheight/2 + 16 + decaly)/32)*32;
    
// set transparency color according to collision
if collision_rectangle(sprx, spry, sprx + sprwidth - 1, spry + sprheight - 1, obj_toavoid, false, false) || scr_item_get_price(global.selecteditem) > global.money {
    var color = c_red;
    global.placeable = false;
} else {
    var color = c_white;
    global.placeable = true;
}

// draw sprite under mouse
draw_sprite_ext(sprite, 0, sprx, spry, 1, 1, 0, color, 0.5);

// draw entrance arrow
if global.itemrot == 0 {
    draw_sprite_ext(spr_arrow, 2, sprx + 32, spry, 1, 1, 0, color, 0.5);    
} else if global.itemrot == 90 {
    draw_sprite_ext(spr_arrow, 3, sprx, spry - 32, 1, 1, 0, color, 0.5);    
} else if global.itemrot == 180 {
    draw_sprite_ext(spr_arrow, 0, sprx - 32, spry, 1, 1, 0, color, 0.5);    
} else if global.itemrot == 270 {
    draw_sprite_ext(spr_arrow, 1, sprx, spry + 32, 1, 1, 0, color, 0.5);    
}
