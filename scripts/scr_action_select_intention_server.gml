/// scr_action_select_intention_server()
var nborders = ds_list_size(obj_controller.orderslist);
var nbtoserve = ds_priority_size(listtoserve);
var firstclientinqueue = obj_controller.orderslist[| 0];

// get orders from global list and copy as much as can carry in personal list + set customer to serve
if (!is_undefined(customertoserve) && (customertoserve == "" || !instance_exists(customertoserve)) && nborders > 0 && nbtoserve < 1 && position_meeting(x, y, obj_server_bar_spot)) {
    // loop
    for (i = 0; i < nborders; i++) {
        if i >= cancarry { break; }
        // make sure the client hasn't left before adding him
        if !is_undefined(firstclientinqueue) && instance_exists(firstclientinqueue) && instance_exists(firstclientinqueue.myseat) && firstclientinqueue.myseat != "" {
            ds_priority_add(listtoserve, firstclientinqueue, -distance_to_object(firstclientinqueue.myseat.tableID));
        }
        // remove entry from controller list
        ds_list_delete(obj_controller.orderslist, 0);
        firstclientinqueue = obj_controller.orderslist[| 0];
    }
    customertoserve = ds_priority_find_max(listtoserve);
}

// if personal list at least 1 and customertoserve == "", add entry
if nbtoserve > 0 && customertoserve == "" {
    customertoserve = ds_priority_find_max(listtoserve);
}

if fired {
    intention = "fired";
} 
  
else if (carrying > 0 && customertoserve != "") { 
    intention = "serve"; 
} 

else if (goal == "" && intention != "wander" && !position_meeting(x, y, obj_server_bar_spot)) {
    intention = "wander"; 
}
   
else { 
    intention = "bar";   
} 

