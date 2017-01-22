///scr_create_drinks_table()

// [0] name, [1] price, [2] preparation speed, [3] thirst fixing, [4] bladder filling, [5] size (bigger = smaller)

var percent = 100;
var baseprepspeed = 0.02;
var basethirstfix = 0.3;
var basebladderfill = 0.2;
var basesize = 0.007; // (bigger = smaller)
global.drinklistcount = 0;

global.drinks[0,global.drinklistcount] = "Scavenger Ale";
global.drinks[1,global.drinklistcount] = 2.20*global.wealth; // price
global.drinks[2,global.drinklistcount] = (baseprepspeed*200)/percent;
global.drinks[3,global.drinklistcount] = (basethirstfix*110)/percent;
global.drinks[4,global.drinklistcount] = (basebladderfill*120)/percent;
global.drinks[5,global.drinklistcount] = (basesize*80)/percent; //(bigger = smaller)
global.drinklistcount++;

global.drinks[0,global.drinklistcount] = "Threepwood's Grog";
global.drinks[1,global.drinklistcount] = 1.90*global.wealth; // price
global.drinks[2,global.drinklistcount] = (baseprepspeed*180)/percent;
global.drinks[3,global.drinklistcount] = (basethirstfix*70)/percent;
global.drinks[4,global.drinklistcount] = (basebladderfill*80)/percent;
global.drinks[5,global.drinklistcount] = (basesize*110)/percent; // (bigger = smaller)
global.drinklistcount++;

global.drinks[0,global.drinklistcount] = "Enzo Brandy";
global.drinks[1,global.drinklistcount] = 5.70*global.wealth; // price
global.drinks[2,global.drinklistcount] = (baseprepspeed*70)/percent;
global.drinks[3,global.drinklistcount] = (basethirstfix*70)/percent;
global.drinks[4,global.drinklistcount] = (basebladderfill*50)/percent;
global.drinks[5,global.drinklistcount] = (basesize*150)/percent; // (bigger = smaller)
global.drinklistcount++;

global.drinks[0,global.drinklistcount] = "Punch Out";
global.drinks[1,global.drinklistcount] = 4.10*global.wealth; // price
global.drinks[2,global.drinklistcount] = (baseprepspeed*60)/percent;
global.drinks[3,global.drinklistcount] = (basethirstfix*80)/percent;
global.drinks[4,global.drinklistcount] = (basebladderfill*60)/percent;
global.drinks[5,global.drinklistcount] = (basesize*130)/percent; // (bigger = smaller)
global.drinklistcount++;

global.drinks[0,global.drinklistcount] = "Clown Vista";
global.drinks[1,global.drinklistcount] = 1.70*global.wealth; // price
global.drinks[2,global.drinklistcount] = (baseprepspeed*230)/percent;
global.drinks[3,global.drinklistcount] = (basethirstfix*100)/percent;
global.drinks[4,global.drinklistcount] = (basebladderfill*120)/percent;
global.drinks[5,global.drinklistcount] = (basesize*90)/percent; // (bigger = smaller)
global.drinklistcount++;

global.drinks[0,global.drinklistcount] = "2 Girls 1 Drink";
global.drinks[1,global.drinklistcount] = 3.30*global.wealth; // price
global.drinks[2,global.drinklistcount] = (baseprepspeed*100)/percent;
global.drinks[3,global.drinklistcount] = (basethirstfix*150)/percent;
global.drinks[4,global.drinklistcount] = (basebladderfill*50)/percent;
global.drinks[5,global.drinklistcount] = (basesize*80)/percent; // (bigger = smaller)
global.drinklistcount++;

global.drinks[0,global.drinklistcount] = "KreutzBeer";
global.drinks[1,global.drinklistcount] = 2.40*global.wealth; // price
global.drinks[2,global.drinklistcount] = (baseprepspeed*120)/percent;
global.drinks[3,global.drinklistcount] = (basethirstfix*130)/percent;
global.drinks[4,global.drinklistcount] = (basebladderfill*110)/percent;
global.drinks[5,global.drinklistcount] = (basesize*100)/percent; // (bigger = smaller)
global.drinklistcount++;

global.drinks[0,global.drinklistcount] = "Guiness Paltrow";
global.drinks[1,global.drinklistcount] = 6.90*global.wealth; // price
global.drinks[2,global.drinklistcount] = (baseprepspeed*40)/percent;
global.drinks[3,global.drinklistcount] = (basethirstfix*80)/percent;
global.drinks[4,global.drinklistcount] = (basebladderfill*30)/percent;
global.drinks[5,global.drinklistcount] = (basesize*120)/percent; // (bigger = smaller)
global.drinklistcount++;

global.drinks[0,global.drinklistcount] = "Jacques-Danielle";
global.drinks[1,global.drinklistcount] = 5.10*global.wealth; // price
global.drinks[2,global.drinklistcount] = (baseprepspeed*60)/percent;
global.drinks[3,global.drinklistcount] = (basethirstfix*85)/percent;
global.drinks[4,global.drinklistcount] = (basebladderfill*20)/percent;
global.drinks[5,global.drinklistcount] = (basesize*140)/percent; // (bigger = smaller)
global.drinklistcount++;
