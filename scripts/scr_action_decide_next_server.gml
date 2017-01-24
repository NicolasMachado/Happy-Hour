///scr_action_decide_next()
moving = false;
var orders = obj_controller.orderslist;
scr_action_select_intention_server();


// remove random wander point
if (goaltype == "obj_wander_point" && instance_exists(goal))  {
    with (goal) { instance_destroy(); }
}

// **************** INTENTION == SERVE ****************
if (intention == "serve") { 

    // if my customer left his seat
    if (is_undefined(customertoserve) || !instance_exists(customertoserve) || customertoserve.myseat == "" || !instance_exists(customertoserve.myseat)) {
        ds_priority_delete_max(listtoserve);
        carrying -= 1;
        customertoserve = "";
        scr_action_pause(20/wit, "Customer left or disappeared.");
    }

    // if table reached, serve
    else if (instance_exists(goal) && goaltype == "obj_server_table_spot" && position_meeting(x, y, goal) && customertoserve.myseat.tableID == goal.tableID ) {
        customertoserve.hasadrink = 1;
        scr_money_trade(customertoserve.x, customertoserve.y-70, global.drinks[1, customertoserve.mydrink], global.drinks[0, customertoserve.mydrink]);
        customertoserve.waitingfordrink = false;       
        carrying -= 1;
        scr_action_experience(10);
        customertoserve = "";
        ds_priority_delete_max(listtoserve);  
        
        // tuto messages  
        if global.tutorial {
            scr_UI_message_box(9);
            scr_UI_message_box(10);
            scr_UI_message_box(11);
            scr_UI_message_box(23);
            scr_UI_add_offtutorial_buttons();
        }
        
        // if no customer on personal list
        if ds_priority_size(listtoserve) < 1 {
            scr_action_pause(50/wit, "No customer on personal list.");
        } else {
            customertoserve = ds_priority_find_max(listtoserve);
            scr_action_pause(50/wit, "Customer just added to my list.");
        }
    }

    // if no drink in hand and at bar
    else if (carrying < ds_priority_size(listtoserve) && goaltype == "obj_server_bar_spot" && position_meeting(x, y, obj_server_bar_spot)){
        // prepare drink
        state = scr_state_make_drink;
    }

    // if at least one drink in hand
    else if (carrying > 0){
        scr_move_to_server_table_spot();
    }
}

// **************** INTENTION == BAR (when carrying == 0) ****************
if (intention == "bar") { 

    // if no drink in hand and not at bar 
    if (!position_meeting(x, y, obj_server_bar_spot)){ 
        scr_move_to_server_bar_spot();
    }

    // if no drink in hand and at bar
    else if carrying < cancarry {
        state = scr_state_make_drink;
    } 
    // if no drink ordered and at bar, idle for 100 and retry
    else {
        scr_action_pause(50/wit, "Nothing to do but stand here, really.");
    } 
}

// **************** INTENTION == WANDER  ****************
if (intention == "wander") { 
    scr_move_to_wander();     
}

// **************** INTENTION == FIRED  ****************
if (intention == "fired") { 
    scr_move_to_destroy();     
}
