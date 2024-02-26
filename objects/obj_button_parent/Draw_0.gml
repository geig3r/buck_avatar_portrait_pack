// Draw the button sprite itself

if (image_xscale != btn_image_xscale) {
	
	if (in_sequence and image_index == 0) {
		image_index = 4;
	}
	
	if (!in_sequence) {
		image_index = 0;
		image_xscale = btn_image_xscale;
		image_yscale = btn_image_yscale;
	}

	
	
}

//draw_self();

draw_sprite_ext(sprite_index, image_index, x, y, btn_image_xscale, btn_image_yscale, 0, c_white, 1);

//scribble("[fnt_button_outlined][fa_center][fa_middle]" + string(image_xscale) + "|" +string(image_yscale)).draw(x+60,y+60);

// Change font and alignment

// Draw text on button
//draw_text(x, y - 5, text);
scribble("[scale, 2][fnt_button_outlined][fa_center][fa_middle]" + text + "[/]").draw(x, y);

//var _spr_size_str = "[fnt_score][fa_left][fa_top]" + string(sprite_get_width(sprite_index)) + "|" + string(sprite_get_height(sprite_index));
//_spr_size_str += "\n" + string(sprite_get_width(sprite_index) * image_xscale) + "|" + string(sprite_get_height(sprite_index) * image_yscale) + "[/]";

//scribble(_spr_size_str).draw(x,y+30);
