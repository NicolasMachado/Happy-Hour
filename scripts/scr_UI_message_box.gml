/// scr_UI_message_box(message ID or "next")
/// "next" if you try to read next message, message id if you want to enqueue

var messageid = argument0;

// add message to queue
if global.messagesactivated && messageid != "next" && !global.messages[3,messageid] && MESSAGE != messageid {
    // enqueue
    ds_queue_enqueue(global.messageslist, messageid);
    // mark as read
    global.messages[3,messageid] = true;
}

if MESSAGE == -1 && ds_queue_size(global.messageslist) > 0 {
    // create message box
    with (instance_create(global.messagex, global.messagey, obj_message_box)) {
        originaltring = global.messages[0,ds_queue_head(global.messageslist)];
        width = global.messages[1,ds_queue_head(global.messageslist)];
        height = global.messages[2,ds_queue_head(global.messageslist)];
        myid =  ds_queue_head(global.messageslist);
        audio_play_sound(snd_alert, 1, 0);
        MESSAGE = myid;
        
    }
    ds_queue_dequeue(global.messageslist);
}
