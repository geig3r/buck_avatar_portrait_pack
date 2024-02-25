// Variable used for clicked state.
is_clicked = false;

// Variable used for button scaling.
target_scale = 1.0;

enum BUTTON_STATE {
	NORMAL,
	OVER,
	CLICK,
	DISABLED
}



font_enable_effects(fnt_small_sdf, true, {
    outlineEnable: true,
    outlineDistance: 2,
    outlineColour: c_black
});


dbg_view("NEXT PREV", true, 20, 40, 300, 300);

dbg_section("Vars");

var _object_index = object_get_name(object_index) + ":" + string(instance_id);
var _watch_image_index = "image_index" + " | " + _object_index;

dbg_text("image_index = ");
dbg_same_line();
dbg_text(string(image_index));
dbg_watch(ref_create(self, image_index), _watch_image_index);

button1 = function()
{
    show_debug_message("Button1 clicked!");
}

ref = ref_create(self, "button1");
dbg_text("This text will go here");
dbg_same_line();
dbg_button("Button1", ref);