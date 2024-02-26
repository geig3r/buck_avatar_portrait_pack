
// Draw self, this is the button sprite.
draw_self();
// Set font.
draw_set_font(fnt_small_sdf);

// Draw the exit icon.
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_text(x,y+2,button_text);