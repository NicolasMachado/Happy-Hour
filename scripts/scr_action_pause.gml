/// scr_action_pause(time, reason)

pause = true;
moving = false;
alarm[0] = argument0;
if argument1 != "" {
    scr_UI_log_write(argument1);
}
state = scr_state_pause;
