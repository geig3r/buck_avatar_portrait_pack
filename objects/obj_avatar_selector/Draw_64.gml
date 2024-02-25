/// Draw count of max text

draw_set_font(fnt_small_sdf);

var _selector_count = string(image_index+1) + " / " + string(image_number);
var _string_height = string_height(" ");
draw_text(x,y-_string_height * 0.5,selector_name);
draw_text(x,y+_string_height * 0.5,_selector_count);















