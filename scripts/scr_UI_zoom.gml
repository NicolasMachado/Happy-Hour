/// scr_UI_zoom("in" or "out")
var amount = argument[0], ratio = view_hview[0]/view_wview[0];
        
// limit how much you can zoom
if (view_wview[0] + amount <= (room_width-128)/2 && amount == -128) exit;
if (view_wview[0] + amount*ratio >= room_width-128 && amount == 128) exit;

// scale the view
view_wview[0] += amount;
view_hview[0] += amount*ratio;

//offset
view_xview[0] -= amount/2;
view_yview[0] -= amount/2;


// Update scale for the UI elements
obj_controller.zoom_scale_w = view_wview[0]/view_wport[0];
obj_controller.zoom_scale_h = view_hview[0]/view_hport[0];
