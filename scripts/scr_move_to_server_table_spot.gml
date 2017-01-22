/// scr_move_to_server_bar_spot(id of customer to serve)

if !moving {
    goaltype = object_get_name(obj_server_table_spot);   
    goal = scr_spots("getbest", obj_server_table_spot);
    // GO
    scr_move_to_goal();
}
