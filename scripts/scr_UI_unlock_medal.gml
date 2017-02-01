/// scr_UI_unlock_medal("type")

var type = argument0;

if type == "bronze" {
    bronzemedal = 1;
    audio_play_sound(snd_victory, 1, false);      
    scr_UI_message_box(19);
    if obj_controller.currentlevel == 1 {
        scr_UI_message_box(24);
    }
    
    // INI file
    ini_open("conf.ini");
    ini_write_real(currentlevel, "bronze", 1);
    ini_close();
}
        

if type == "silver" {
    silvermedal = 2;
    audio_play_sound(snd_victory, 1, false);      
    scr_UI_message_box(20);
    
    // INI file
    ini_open("conf.ini");
    ini_write_real(currentlevel, "silver", 2);
    ini_close();
}
        
if type == "gold" {
    goldmedal = 3;
    audio_play_sound(snd_victory, 1, false);      
    scr_UI_message_box(21);
    
    // INI file
    ini_open("conf.ini");
    ini_write_real(currentlevel, "gold", 3);
    ini_close();
}
