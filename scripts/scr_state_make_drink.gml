/// scr_state_make_drink

image_index = 0;
var sizelist = ds_priority_size(listtoserve);
if carrying < sizelist {
    carrying += 0.02*wit;
} else {
    scr_action_experience(3*sizelist);
    scr_action_decide_next_server();
}
