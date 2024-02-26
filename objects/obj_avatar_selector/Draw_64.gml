/// Draw count of max text

if (global.debug) {
	draw_sprite(debug_sprite,image_index,x,y);
}
draw_set_font(fnt_smaller_sdf);
var _selector_count = string(image_index+1) + " / " + string(image_number);
var _string_height = string_height(" ");
draw_text(x,y-_string_height * 0.5,selector_name);
//draw_set_font(fnt_small_sdf);
//_string_height = string_height(" ");
draw_text(x,y+_string_height * 0.5,_selector_count);















