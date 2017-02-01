/// scr_item_get_price(item name)

var nbitems = array_length_1d(obj_controller.items);
var itemname = argument0;

// loops through item list and extract item number
for (i=0; i<nbitems; i++) {
    if obj_controller.items[0,i] == itemname {
        return obj_controller.items[2,i];
        exit;
    }
}
