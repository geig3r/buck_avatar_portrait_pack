// If mouse is over this instance, adjusting for the GUI layer...
if (device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	is_over = true;
	
	// Reduce target scale size.
	target_scale = 0.95;

	if (image_index != BUTTON_STATE.OVER && !is_clicked) {
		
		image_index = BUTTON_STATE.OVER;
		show_debug_message("set to OVER");
	}
	
	// If left mouse button is pressed...
	if (mouse_check_button_pressed(mb_left))
	{
		
		if (image_index != BUTTON_STATE.CLICKED) {
			image_index = BUTTON_STATE.CLICKED;
			show_debug_message("set to CLICKED");
		}
		
		// Play click sound effect.
		audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
		
		// Sets click state to true.
		is_clicked = true;
		
		// Reduce target scale size further.
		target_scale = 0.9;
		
	}
	
	// Checks if mouse has been clicked on this button.
	if (is_clicked)
	{
		// Reduce target scale size further.
		target_scale = 0.9;

		// If left mouse button is released...
		if (mouse_check_button_released(mb_left))
		{
			
			if (image_index != BUTTON_STATE.NORMAL && !is_over) {			
				image_index = BUTTON_STATE.NORMAL;
				show_debug_message("set to release NORMAL");				
			}
			
			// Closes the game.
			if (button_text == "NEXT")
			{

				with(button_parent)
				{

					if (self.id == other.button_parent_id)
					{
						if (self.image_index + 1 > self.image_number)
						{
							self.image_index = 0;
						}
						else
						{
							self.image_index++;
						}
					}
				}
			}
			else if (button_text == "PREV")
			{
				
				
				with(button_parent)
				{
					if (self.id == other.button_parent_id)
					{
						if (id == other.button_parent_id && image_index - 1 < 0)
						{
							image_index = image_number;
						}
						else
						{
							image_index--;
						}
					}
				}
			}
		}
	}
}
else
{
	// Reset target scale size.
	target_scale = 1.0;
	is_over = false;
	
	if (image_index != BUTTON_STATE.NORMAL) {
		image_index = BUTTON_STATE.NORMAL;
		show_debug_message("set to mouse leave NORMAL");	
		
	}
	
}

// Stores how many gamepad count.
var _max_pads = gamepad_get_device_count();

// Checks when at least 1 gamepad is present.
if (_max_pads > 0)
{
	// Checks the gamepad is connected.
	if (gamepad_is_connected(0))
	{
		// Checks if gamepad button has been pressed.
		if (gamepad_button_check_pressed(0, gp_select))
		{
			// Closes the game.
		
		}
	}
}

// Lerp scale values to target scale.
image_xscale = lerp(image_xscale, target_scale, 0.1);
image_yscale = lerp(image_yscale, target_scale, 0.1);
