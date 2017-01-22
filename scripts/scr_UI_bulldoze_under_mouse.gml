/// scr_UI_bulldoze_under_mouse(obj)

var inst = collision_point(mouse_x, mouse_y, obj_furniture, false, true);
var instghost = collision_point(mouse_x, mouse_y, obj_furniture_ghost, true, true);
if instghost { inst = instghost; }
if (inst && !position_meeting(mouse_x, mouse_y, obj_button) && !position_meeting(mouse_x, mouse_y, obj_wall_indesctructible)) {
    // get the object
    var nameobj = asset_get_index(object_get_name(inst.object_index));
    // get its offset
    var offx = sprite_get_xoffset(object_get_sprite(nameobj))*2;
    var offy = sprite_get_yoffset(object_get_sprite(nameobj))*2;
    
    // clear from grid
    mp_grid_clear_rectangle(global.grid, inst.x, inst.y, inst.x + inst.sprite_width - offx - 1, inst.y + inst.sprite_height - offy - 1);   
    with (inst) { instance_destroy(); }
    
    // WALL
    // recreate all walls to connect them
    if (nameobj == obj_wall || nameobj == obj_wall_indesctructible) {
        with (obj_wall) {
            instance_destroy();
            instance_create(x,y,obj_wall);
        }
        with (obj_wall_indesctructible) {
            instance_destroy();
            instance_create(x,y,obj_wall_indesctructible);
        }
    }
}
