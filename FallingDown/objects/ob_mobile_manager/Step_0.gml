/// @descr


if (exit_delay > 0)
{
	exit_delay -= 1;
}

var rm_prev = room_previous(room);
if (rm_prev == -1 || rm_prev == rm_init)
{
	if (exit_delay > 0)
	{
		if keyboard_check_pressed(vk_backspace)
		{
			game_end();
			game_restart();
		}
	}
	else
	{
		if keyboard_check_pressed(vk_backspace)
		{
			exit_delay = exit_delay_std;
		}
	}
}
else
{
	if keyboard_check_pressed(vk_backspace)
	{
		switch(room)
		{
			default:
				room_goto_previous();
				break;
			case rm_settings:
				room_goto(rm_main);
				break;
			case rm_game:
				room_goto(rm_main);
				break;
		}
	}
}