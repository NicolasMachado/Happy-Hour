///scr_wealth_calculation()

var nbbars = instance_number(obj_bar);
var nbtables = instance_number(obj_table);
var nbchairs = instance_number(obj_chair);
var nbtoilets = instance_number(obj_toilet);

var finaldivisor = 0;

var barsdivisor = 0;
var tablesdivisor = 0;
var chairsdivisor = 0;
var toiletdivisor = 0;

var wealthbars = 0;
var wealthtables = 0;
var wealthchairs = 0;
var wealthtoilets = 0;

// bars wealth
for (i=0; i<nbbars; i++) {
    repeat ( obj_controller.items[4, instance_find(obj_bar, i).itemnumber] ) { // multiplier
        wealthbars += obj_controller.items[3, instance_find(obj_bar, i).itemnumber]; // add wealth
    }
    barsdivisor += obj_controller.items[4, instance_find(obj_bar, i).itemnumber];
}

// tables wealth
for (i=0; i<nbtables; i++) {
    repeat ( obj_controller.items[4, instance_find(obj_table, i).itemnumber] ) { // multiplier
        wealthtables += obj_controller.items[3, instance_find(obj_table, i).itemnumber]; // add wealth
    }
    tablesdivisor += obj_controller.items[4, instance_find(obj_table, i).itemnumber];
}

// chairs wealth
for (i=0; i<nbchairs; i++) {
    repeat ( obj_controller.items[4, instance_find(obj_chair, i).itemnumber] ) { // multiplier
        wealthchairs += obj_controller.items[3, instance_find(obj_chair, i).itemnumber]; // add wealth
    }
    chairsdivisor += obj_controller.items[4, instance_find(obj_chair, i).itemnumber];
}

// toilet wealth
for (i=0; i<nbtoilets; i++) {
    repeat ( obj_controller.items[4, instance_find(obj_toilet, i).itemnumber] ) { // multiplier
        wealthtoilets += obj_controller.items[3, instance_find(obj_toilet, i).itemnumber]; // add wealth
    }
    toiletdivisor += obj_controller.items[4, instance_find(obj_toilet, i).itemnumber];
}

if wealthbars != 0 {
    wealthbars /= barsdivisor;
    finaldivisor++;
}
if wealthtables != 0 {    
    wealthtables /= tablesdivisor;
    finaldivisor++;
}
if wealthchairs != 0 {  
    wealthchairs /= chairsdivisor;
    finaldivisor++;
}
if wealthtoilets != 0 {  
    wealthtoilets /= toiletdivisor;
    finaldivisor++;
}

if finaldivisor != 0 {
    obj_controller.wealth = (wealthbars*nbbars + wealthtables*nbtables + wealthchairs*nbchairs + wealthtoilets*nbtoilets) / (nbbars + nbtables + nbchairs + nbtoilets);
} else {
    obj_controller.wealth = 1;
}

// salary wealth
with (obj_server) {
    salary = basesalary*(obj_controller.wealth/WEALTHDIV);
}

scr_UI_create_drinks_table();
