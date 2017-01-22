/// scr_UI_log_write(string);

for (i=3; i>=0; i--)
{
    global.log[i+1] = global.log[i];
}
global.log[0] = string(self.id) + ": " + argument0;
