/// add more furniture to selection

if obj_controller.tutorial {
    with (instance_create(-1000, -1000, obj_table_2x2_button)) { buttonum = 1; }
    with (instance_create(-1000, -1000, obj_table_3x2_button)) { buttonum = 2; }
    with (instance_create(-1000, -1000, obj_table_2x2_1_button)) { buttonum = 3; }
}

obj_controller.tutorial = 0;
