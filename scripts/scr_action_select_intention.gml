/// scr_action_select_intention()

var listintention = ds_priority_create();

// add items to list
ds_priority_add(listintention, "drink", thirstceiling-thirst);
ds_priority_add(listintention, "toilet", bladder-bladderceiling);
ds_priority_add(listintention, "leave", wantstoleave);

// get max intention
var intention = ds_priority_find_max(listintention);

ds_priority_destroy(listintention);

// force toilet intention when in stall to avoid getting stuck in case of intention change
if position_meeting(x, y, obj_toilet_spot) {
    intention = "toilet";
}

if fired {
    intention = "fired";
} 

return intention;
