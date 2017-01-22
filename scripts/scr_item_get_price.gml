/// scr_item_get_price(item name)

var nbitems = array_length_1d(global.items);
var itemname = argument0;

// loops through item list and extract item number
for (i=0; i<nbitems; i++) {
    if global.items[0,i] == itemname {
        return global.items[2,i];
        exit;
    }
}
