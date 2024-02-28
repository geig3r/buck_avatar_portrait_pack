// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


enum AV_SPRITE_ORIGIN {
	TOP_LEFT,
	TOP_CENTER,
	TOP_RIGHT,
	MIDDLE_LEFT,
	MIDDLE_CENTER,
	MIDDLE_RIGHT,
	BOTTOM_LEFT,
	BOTTOM_CENTER,
	BOTTOM_RIGHT
}

//


function AvatarSystem(_avatar_settings, _x1, _y1, _size = 500, _pos_absolute = true) constructor {



	var _owner = other;
	owner = _owner;
	size = _size;
	x1 = _pos_absolute ? _x1 : _x1 + owner.x;
	y1 = _pos_absolute ? _y1 : _y1 + owner.y;
	
	// future todo, allow for origin setting
	x2 = x1 + size;
	y2 = y1 + size;


	// no idea why I need this
	
	get_sprite_offset = function(_spr) {
		var _offset_x = sprite_get_xoffset(_spr);
		var _offset_y = sprite_get_yoffset(_spr);
		return [_offset_x, _offset_y];
	}

	__process_avatar_settings = function(_avatar_settings) {
		/* take an array or a struct or a code */
		
	}


    /**
     * Default draw event for drawing a rectangle the size of GUIBox
     * @function __draw__
     */
    __draw__ = function() {
        draw_rectangle_color(x1, y1, x1+size, y1+size, c_white, c_white, c_white, c_white, true);
    }

    /**
     * Draws rectangle the size of GUIBox
     * @function draw
     */
    draw = function() {
        __draw__();
    }

    /**
     * Set drawing function
     * @function set_draw
     * @param {method} func - Method to overwrite draw() function with
     */
    set_draw = function(_func) {
        if !is_method(_func) {
            show_error("Expected method, recieved " + typeof(_func), true);
        }
        draw = method(self, _func);
    }
/*


- deal with sprite origin
- draw to surface then draw surface (assuming no animations)
- merge non animated sprites into non animated layers that surround animated layers
- spine


*/




}