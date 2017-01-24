/// scr_action_experience(amount)

experience += argument0;

// level up!
if level == 0 && experience > 200 
|| level == 1 && experience > 500
|| level == 2 && experience > 1500

{
    scr_UI_message_box(16);
    scr_UI_message_box(17);
    
    level += 1;
    spd = spd + ((spd * 15)/100); // + multiplier% speed
    wit = wit + ((wit * 15)/100); // + multiplier% wit
    basesalary = (basesalary + ((basesalary*10)/100));
    salary = basesalary*(global.wealth/WEALTHDIV);
    cancarry++;
}
