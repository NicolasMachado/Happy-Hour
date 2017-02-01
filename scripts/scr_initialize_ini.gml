///scr_initialize_ini()
if !file_exists("conf.ini") {

    ini_open("conf.ini");
    
    ini_write_real("level_1", "bronze", 0);
    ini_write_real("level_1", "silver", 0);
    ini_write_real("level_1", "gold", 0);

    ini_write_real("level_2", "bronze", 0);
    ini_write_real("level_2", "silver", 0);
    ini_write_real("level_2", "gold", 0);

    ini_write_real("level_3", "bronze", 0);
    ini_write_real("level_3", "silver", 0);
    ini_write_real("level_3", "gold", 0);

    ini_write_real("level_4", "bronze", 0);
    ini_write_real("level_4", "silver", 0);
    ini_write_real("level_4", "gold", 0);
    
    ini_write_real("config", "music", 1);
    ini_write_real("config", "SFX", 1);

    ini_close();
}

ini_open("conf.ini");

global.music = ini_read_real("config", "music", 1);
global.SFX = ini_read_real("config", "SFX", 1);

ini_close();
