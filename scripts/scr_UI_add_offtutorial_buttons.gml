/// add more furniture to selection

if global.tutorial {
    instance_create(-1000, -1000, obj_table_1x1_1_button);
    instance_create(-1000, -1000, obj_table_2x2_button);
    instance_create(-1000, -1000, obj_table_2x2_1_button);
    instance_create(-1000, -1000, obj_table_2x2_2_button);
    instance_create(-1000, -1000, obj_table_3x2_button);
    instance_create(-1000, -1000, obj_table_3x2_1_button);
    instance_create(-1000, -1000, obj_table_3x2_2_button);
    
    instance_create(-1000, -1000, obj_chair_1_button);
    instance_create(-1000, -1000, obj_chair_2_button);
    
    instance_create(-1000, -1000, obj_toilet_1_button);
    instance_create(-1000, -1000, obj_toilet_2_button);
    
    instance_create(-1000, -1000, obj_bar_2_button);
    instance_create(-1000, -1000, obj_bar_3_button);
}

global.tutorial = 0;
