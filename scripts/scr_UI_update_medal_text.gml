/// scr_UI_update_medal_text()

// This is the script where you set all the goals and the tooltiptexts for each type of medal. obj_controller checks every x frames if goals are reached or not

var goalreached = false;

// ***************** LEVEL 1 *********************
if obj_controller.currentlevel == "level_1" {
    
    // BRONZE
    if medaltype == "Bronze" && obj_controller.bronzemedal == 0 {   
        // set goals    
        goalserve = 50;  
        balance = 100;  
        
    // SILVER
    } else if medaltype == "Silver" && obj_controller.silvermedal == 0 {    
        // set goals    
        goalserve = 100;    
        balance = 300;   
          
     // GOLD
     } else if medaltype == "Gold" && obj_controller.goldmedal == 0 {    
        // set goals    
        goalserve = 300;      
        balance = 1000;   
         
    } else {
        goalreached = true;
    }
    
    // Set string
    if !goalreached {
        tooltiptext = string(medaltype) + " medal##To earn this medal:##þ Serve " + string(goalserve) + " customers (" + string(obj_controller.nbserved) + "/" + string(goalserve) + ")#þ Have at least $" + string(balance) + " in the bank";
    } else {
        //goal reached
        tooltiptext = "You have earned the " + string(medaltype) + " medal";    
    }
}

// ***************** LEVEL 2 *********************
if obj_controller.currentlevel == "level_2" {
    
    // BRONZE
    if medaltype == "Bronze" && obj_controller.bronzemedal == 0 {   
        // set goals    
        goalserve = 200;  
        balance = 600;  
        reputation = 3;
        
    // SILVER
    } else if medaltype == "Silver" && obj_controller.silvermedal == 0 {    
        // set goals    
        goalserve = 400;    
        balance = 2000;  
        reputation = 3.5; 
          
     // GOLD
     } else if medaltype == "Gold" && obj_controller.goldmedal == 0 {    
        // set goals    
        goalserve = 700;      
        balance = 5000;   
        reputation = 4;
         
    } else {
        goalreached = true;
    }
    
    // Set string
    if !goalreached {
        tooltiptext = string(medaltype) + " medal##To earn this medal:##þ Serve " + string(goalserve) + " customers. (" + string(obj_controller.nbserved) + "/" + string(goalserve) + ")#þ Have at least $" + string(balance) + " in the bank#þ Have a reputation rating superior to " + string(reputation) + " stars";
    } else {
        //goal reached
        tooltiptext = "You have earned the " + string(medaltype) + " medal";    
    }
}

// ***************** LEVEL 3 *********************
if obj_controller.currentlevel == "level_3" {

    // BRONZE
    if medaltype == "Bronze" && obj_controller.bronzemedal == 0 {    
        // set goals
        balance = 2000;
        wealth = 150;
        reputation = 3.5;
        waittime = 7;
        
    // SILVER
    } else if medaltype == "Silver" && obj_controller.silvermedal == 0 {    
        // set goals    
        balance = 5000;
        wealth = 300;
        reputation = 4;
        waittime = 5;
          
     // GOLD
     } else if medaltype == "Gold" && obj_controller.goldmedal == 0 {    
        // set goals    
        balance = 15000;
        wealth = 400;
        reputation = 4.5;
        waittime = 3;  
        
    } else {
        goalreached = true;
    }
        
    // set string
    if !goalreached {
        tooltiptext = string(medaltype) + " medal##To earn this medal:##þ Have at least $" + string(balance) + " in the bank#þ Maintain an average waiting time lower than " + string(waittime) + " minutes#þ Have a wealth score superior to " + string(wealth) + "#þ Have a reputation rating superior to " + string(reputation) + " stars";
    } else {
        //goal reached
        tooltiptext = "You have earned the " + string(medaltype) + " medal";    
    }
}


// ***************** LEVEL 4 *********************
if obj_controller.currentlevel == "level_4" {

    // BRONZE
    if medaltype == "Bronze" && obj_controller.bronzemedal == 0 {    
        // set goals
        balance = 4000;
        wealth = 250;
        reputation = 3.8;
        waittime = 6;
        nbseats = 50;
        
    // SILVER
    } else if medaltype == "Silver" && obj_controller.silvermedal == 0 {    
        // set goals    
        balance = 10000;
        wealth = 350;
        reputation = 4.2;
        waittime = 4;
        nbseats = 100;
          
     // GOLD
     } else if medaltype == "Gold" && obj_controller.goldmedal == 0 {    
        // set goals    
        balance = 25000;
        wealth = 450;
        reputation = 4.8;
        waittime = 3;  
        nbseats = 150;
        
    } else {
        goalreached = true;
    }
        
    // set string
    if !goalreached {
        tooltiptext = string(medaltype) + " medal##To earn this medal:##þ Have at least $" + string(balance) + " in the bank#þ Maintain an average waiting time lower than " + string(waittime) + " minutes#þ Have a wealth score superior to " + string(wealth) + "#þ Have a reputation rating superior to " + string(reputation) + " stars#þ Be able to host at least " + string(nbseats) + " customers (" + string(obj_controller.nbseats) + "/" + string(nbseats) + ")";
    } else {
        //goal reached
        tooltiptext = "You have earned the " + string(medaltype) + " medal";    
    }
}


alarm[0] = room_speed/2;
