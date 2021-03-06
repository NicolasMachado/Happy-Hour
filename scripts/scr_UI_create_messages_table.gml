///scr_UI_create_messages_table()

var i = 0;

// 0
obj_controller.messages[0,i] = scr_UI_process_message("Hi, and welcome to Happy Hour. This tutorial is going to take you through the basics of the game. If you would rather skip the tutorial and just freely play the game, disable the messages on the top right of the screen, and I promise I will not bother you again.##Click on this message to continue."); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 1
obj_controller.messages[0,i] = scr_UI_process_message("The first thing you need to know about Happy Hour is that in its current state, it is not a full game. It is a demo designed to showcase my progress."); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 2
obj_controller.messages[0,i] = scr_UI_process_message("Happy Hour is a sandbox game that lets you create a nice and profitable bar. Your money balance is displayed on the top-left of the screen. You probably want to keep an eye on that."); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 3
obj_controller.messages[0,i] = scr_UI_process_message("Yikes! Looks like it's not going too well..."); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 4
obj_controller.messages[0,i] = scr_UI_process_message("Look, for this one time, I will help you a bit, but don't tell anyone, ok? And next time, you're on your own!"); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 5
obj_controller.messages[0,i] = scr_UI_process_message("First off, let's buy a counter where your waiters will prepare drinks. Select the basic counter in the left menu, and place it anywhere you want.##Please note that it needs to be against a wall. You can scroll with your middle mouse to rotate an element. Make sure the entrance of the counter is free!"); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 6
obj_controller.messages[0,i] = scr_UI_process_message("Nice! Now buy a bathroom stall and place it anywhere you want. The blue arrow indicates the side of the entrance. Make sure it's free."); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 7
obj_controller.messages[0,i] = scr_UI_process_message("Those drinks aren't gonna serve themselves, right? Let's hire a waiter. You can place him anywhere you want inside the bar. Don't worry about him, he'll find his way."); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 8
obj_controller.messages[0,i] = scr_UI_process_message("Finally, buy a table. Place it, add chairs around it, and make sure you leave enough room for people to walk around!"); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 9
obj_controller.messages[0,i] = scr_UI_process_message("Congratulations! Your first client has just been served."); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 10
obj_controller.messages[0,i] = scr_UI_process_message("The stars on the top of your screen represent your reputation. Everytime a client leaves your bar, they rate their experience. Keep them drinking, make sure they all have access to the bathroom, and make sure their waiting time is as low as possible in order to improve your reputation."); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 11
obj_controller.messages[0,i] = scr_UI_process_message("The higher your reputation is, the more people will be attracted to your bar. A bad reputation can seriously weaken your profits."); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 12
obj_controller.messages[0,i] = scr_UI_process_message("Oh no! A client seems to be stuck and he's very angry about it! Make sure all the areas of your bar are accessible by both your staff and the clients if you don't want your reputation to drop significantly."); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = 30*room_speed; // cooldown
i++;

// 13
obj_controller.messages[0,i] = scr_UI_process_message("Customers leave your bar because they can't go to the bathroom. Make sure there are enough accessible bathroom stalls for everyone."); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = 30*room_speed; // cooldown
i++;

// 14
obj_controller.messages[0,i] = scr_UI_process_message("A lot of customers are leaving your bar because their waiting time is too high!"); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = 30*room_speed; // cooldown
i++;

// 15
obj_controller.messages[0,i] = scr_UI_process_message("You can pause and unpause the game using the space key. You can scroll up and down with your mouse to zoom in and out. You can also move the camera around using the arrow keys on your keyboard.##But enough blabbering, let's get started!"); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 16
obj_controller.messages[0,i] = scr_UI_process_message("Congratulations! One of your waiters has leveled up. Waiters gain experience as they work. When they level up, they become quicker, smarter and they can carry more drinks. You can click on any waiter to get more info."); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 17
obj_controller.messages[0,i] = scr_UI_process_message("Unfortunately, it comes at a price. The higher their level is, the higher their salary gets."); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 18
obj_controller.messages[0,i] = scr_UI_process_message("Another honest worker on the street...#You take a big hit to your reputation every time you let an employee go. Be careful not to overdo it."); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 19
obj_controller.messages[0,i] = scr_UI_process_message("Nice job! You have earned the bronze medal!"); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 20
obj_controller.messages[0,i] = scr_UI_process_message("Well done! You have earned the silver medal!"); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 21
obj_controller.messages[0,i] = scr_UI_process_message("Wow! Excellent job! You have earned the gold medal!"); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 22
obj_controller.messages[0,i] = scr_UI_process_message("I guess you had your reasons for kicking this customer out. Fair enough. Just be aware that it takes a fair toll on your reputation."); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 23
obj_controller.messages[0,i] = scr_UI_process_message("Oh, by the way, more pieces of furnitures have been unlocked. Don't hesitate to invest in better furniture. The fancier your bar look, the more people will spend. Good luck!"); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// 24
obj_controller.messages[0,i] = scr_UI_process_message("Earning a bronze medal unlocks the next level. You can keep playing and earn more medals, or you can give the next level a try by going back to the main menu.##Remember: If you quit now, only your medals are saved, not your bar. If you want higher medals, you have to play the level in one sitting!"); // message
obj_controller.messages[1,i] = string_width(obj_controller.messages[0,i]); // width
obj_controller.messages[2,i] = string_height(obj_controller.messages[0,i]); // height
obj_controller.messages[3,i] = false; // has the message been seen?
obj_controller.messages[4,i] = -1; // cooldown
i++;

// create cooldown array
cdmessages[i-1] = -1;
