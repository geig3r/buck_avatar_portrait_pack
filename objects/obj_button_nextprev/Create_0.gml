// Variable used for clicked state.
is_clicked = false;
is_over = false;

// Variable used for button scaling.
target_scale = 1.0;
image_speed = 0;

enum BUTTON_STATE {
	NORMAL,
	OVER,
	CLICKED,
	DISABLED
}




//dbg_view("NEXT PREV", true, 20, 40, 300, 300);

//var _object_index = object_get_name(object_index) + ":" + string(instance_id);
//dbg_section("Vars: " + _object_index);
//var _watch_image_index = "button: " + button_text;
//dbg_text(_watch_image_index);
//var _ref = ref_create(self, "image_index");
//dbg_watch(_ref,"image_index: ");

//var _parent_name = object_get_name(button_parent) + "|" + string(button_parent.instance_id);
//dbg_text("Parent Obj: ");
//dbg_same_line();
//dbg_text(_parent_name);
