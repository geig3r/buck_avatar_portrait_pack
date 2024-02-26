/// @description Insert description here
// You can write your code in this editor



debug_sprite = spr_blank_120x40;

arrows = spr_button_nextprev;
var _spr_margin = 10;
var _spr_offset = sprite_get_width(debug_sprite) * 0.5 + 40;
arrows_next_x = _spr_offset + _spr_margin;
arrows_prev_x = -(_spr_offset + _spr_margin);

var _prev_button = instance_create_layer(x + arrows_prev_x,y,"Instances",obj_button_nextprev,
	{
		button_text : "PREV",
		button_parent : object_index,
		button_parent_id : id,
		debug_sprite : sprite_index
	}
);

var _next_button = instance_create_layer(x + arrows_next_x,y,"Instances",obj_button_nextprev,
	{
		button_text : "NEXT",
		button_parent : object_index,
		button_parent_id : id,
		debug_sprite : sprite_index
	}
);

image_speed = 0;














