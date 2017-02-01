///scr_create_drinks_table()

// [0] name, [1] price, [2] preparation speed, [3] thirst fixing, [4] bladder filling, [5] size (bigger = smaller)

var percent = 100;
var baseprepspeed = 0.02;
var basethirstfix = 0.3;
var basebladderfill = 0.2;
var basesize = 0.007; // (bigger = smaller)
drinklistcount = 0;

drinks[0,drinklistcount] = "Scavenger Ale";
drinks[1,drinklistcount] = 2.20*obj_controller.wealth; // price
drinks[2,drinklistcount] = (baseprepspeed*200)/percent;
drinks[3,drinklistcount] = (basethirstfix*110)/percent;
drinks[4,drinklistcount] = (basebladderfill*120)/percent;
drinks[5,drinklistcount] = (basesize*80)/percent; //(bigger = smaller)
drinklistcount++;

drinks[0,drinklistcount] = "Threepwood's Grog";
drinks[1,drinklistcount] = 1.90*obj_controller.wealth; // price
drinks[2,drinklistcount] = (baseprepspeed*180)/percent;
drinks[3,drinklistcount] = (basethirstfix*70)/percent;
drinks[4,drinklistcount] = (basebladderfill*80)/percent;
drinks[5,drinklistcount] = (basesize*110)/percent; // (bigger = smaller)
drinklistcount++;

drinks[0,drinklistcount] = "Enzo Brandy";
drinks[1,drinklistcount] = 5.70*obj_controller.wealth; // price
drinks[2,drinklistcount] = (baseprepspeed*70)/percent;
drinks[3,drinklistcount] = (basethirstfix*70)/percent;
drinks[4,drinklistcount] = (basebladderfill*50)/percent;
drinks[5,drinklistcount] = (basesize*150)/percent; // (bigger = smaller)
drinklistcount++;

drinks[0,drinklistcount] = "Punch Out";
drinks[1,drinklistcount] = 4.10*obj_controller.wealth; // price
drinks[2,drinklistcount] = (baseprepspeed*60)/percent;
drinks[3,drinklistcount] = (basethirstfix*80)/percent;
drinks[4,drinklistcount] = (basebladderfill*60)/percent;
drinks[5,drinklistcount] = (basesize*130)/percent; // (bigger = smaller)
drinklistcount++;

drinks[0,drinklistcount] = "Clown Vista";
drinks[1,drinklistcount] = 1.70*obj_controller.wealth; // price
drinks[2,drinklistcount] = (baseprepspeed*230)/percent;
drinks[3,drinklistcount] = (basethirstfix*100)/percent;
drinks[4,drinklistcount] = (basebladderfill*120)/percent;
drinks[5,drinklistcount] = (basesize*90)/percent; // (bigger = smaller)
drinklistcount++;

drinks[0,drinklistcount] = "2 Girls 1 Drink";
drinks[1,drinklistcount] = 3.30*obj_controller.wealth; // price
drinks[2,drinklistcount] = (baseprepspeed*100)/percent;
drinks[3,drinklistcount] = (basethirstfix*150)/percent;
drinks[4,drinklistcount] = (basebladderfill*50)/percent;
drinks[5,drinklistcount] = (basesize*80)/percent; // (bigger = smaller)
drinklistcount++;

drinks[0,drinklistcount] = "KreutzBeer";
drinks[1,drinklistcount] = 2.40*obj_controller.wealth; // price
drinks[2,drinklistcount] = (baseprepspeed*120)/percent;
drinks[3,drinklistcount] = (basethirstfix*130)/percent;
drinks[4,drinklistcount] = (basebladderfill*110)/percent;
drinks[5,drinklistcount] = (basesize*100)/percent; // (bigger = smaller)
drinklistcount++;

drinks[0,drinklistcount] = "Guiness Paltrow";
drinks[1,drinklistcount] = 6.90*obj_controller.wealth; // price
drinks[2,drinklistcount] = (baseprepspeed*40)/percent;
drinks[3,drinklistcount] = (basethirstfix*80)/percent;
drinks[4,drinklistcount] = (basebladderfill*30)/percent;
drinks[5,drinklistcount] = (basesize*120)/percent; // (bigger = smaller)
drinklistcount++;

drinks[0,drinklistcount] = "Jacques-Danielle";
drinks[1,drinklistcount] = 5.10*obj_controller.wealth; // price
drinks[2,drinklistcount] = (baseprepspeed*60)/percent;
drinks[3,drinklistcount] = (basethirstfix*85)/percent;
drinks[4,drinklistcount] = (basebladderfill*20)/percent;
drinks[5,drinklistcount] = (basesize*140)/percent; // (bigger = smaller)
drinklistcount++;
