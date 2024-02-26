// Set game width, height and scale
var _win_control_margin = 100;
var _adjusted_display_height = display_get_height() - _win_control_margin;

var _width = 1920, _height = 1080, _scale = _adjusted_display_height / 1920; // min(1, display_get_height() / 1920);

// Set window size and surface resolution
window_set_size(_width*_scale, _height*_scale);
surface_resize(application_surface, _width*_scale, _height*_scale);

// Move window to center of display
window_set_position(display_get_width()/2-(_width*_scale)/2, display_get_height()/2-(_height*_scale)/2);

// Set correct size for GUI layer
display_set_gui_size(_width*_scale, _height*_scale);


room_goto(rm_menu);

