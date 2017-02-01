/// scr_UI_log_write(string);

for (i=3; i>=0; i--)
{
    obj_controller.log[i+1] = obj_controller.log[i];
}
obj_controller.log[0] = string(self.id) + ": " + argument0;
