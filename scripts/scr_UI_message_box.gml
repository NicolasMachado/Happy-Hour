/// scr_UI_message_box(message ID or "next")
/// "next" if you try to read next message, message id if you want to enqueue

var messageid = argument0;

// add message to queue
if obj_controller.messagesactivated && messageid != "next" && !obj_controller.messages[3,messageid] && MESSAGE != messageid {
    // enqueue
    ds_queue_enqueue(obj_controller.messageslist, messageid);
    // mark as read
    obj_controller.messages[3,messageid] = true;
}

if MESSAGE == -1 && ds_queue_size(obj_controller.messageslist) > 0 {
    // create message box
    with (instance_create(obj_controller.messagex, obj_controller.messagey, obj_message_box)) {
        originaltring = obj_controller.messages[0,ds_queue_head(obj_controller.messageslist)];
        width = obj_controller.messages[1,ds_queue_head(obj_controller.messageslist)];
        height = obj_controller.messages[2,ds_queue_head(obj_controller.messageslist)];
        myid =  ds_queue_head(obj_controller.messageslist);
        audio_play_sound(snd_alert, 1, 0);
        MESSAGE = myid;
        
    }
    ds_queue_dequeue(obj_controller.messageslist);
}
