// If mouse is over this instance, adjusting for the GUI layer...
if (device_mouse_x_to_gui(0) > bbox_left && device_mouse_x_to_gui(0) < bbox_right && device_mouse_y_to_gui(0) > bbox_top && device_mouse_y_to_gui(0) < bbox_bottom)
{
	// Reduce target scale size.
	target_scale = 0.95;

	if (image_index != BUTTON_STATE.OVER) {
		image_index = BUTTON_STATE.OVER;
	}
	
	// If left mouse button is pressed...
	if (mouse_check_button_pressed(mb_left))
	{
		// Play click sound effect.
		audio_play_sound(snd_click, 0, 0, 1.0, undefined, 1.0);
		
		// Sets click state to true.
		is_clicked = true;
		
		// Reduce target scale size further.
		target_scale = 0.9;
		
		image_index = BUTTON_STATE.CLICK;
	}
	
	// Checks if mouse has been clicked on this button.
	if (is_clicked)
	{
		// Reduce target scale size further.
		target_scale = 0.9;
		
		// If left mouse button is released...
		if (mouse_check_button_released(mb_left))
		{
			
			image_index = BUTTON_STATE.NORMAL;
			// Closes the game.
			if (button_text == "NEXT")
			{

				with(button_parent)
				{
					if (image_index + 1 > image_number) {
						image_index = 0;
					} else {
						image_index++;
					}
				}
			}
			else if (button_text == "PREV")
			{
				with(button_parent)
				{				
					if (image_index - 1 < 0) {
						image_index = image_number;
					} else {
						image_index--;
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
	
	if (image_index != BUTTON_STATE.NORMAL && is_clicked != true) {
		image_index = BUTTON_STATE.NORMAL;
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