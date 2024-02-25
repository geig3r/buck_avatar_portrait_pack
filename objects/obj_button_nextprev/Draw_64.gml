// Set frame.
image_index = 1;

// Draw self, this is the button sprite.
draw_self();

// Draw the exit icon.
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_text(x,y,button_text);