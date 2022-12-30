function player_state_hurt()
{
	var _collision_left = false, _collision_right = false, _collision_up = false, _collision_down = false;
	
	if (state_begin)
	{
		visible = true;
		camera.active = true;
		speed_h = 1 * -face;
		speed_v = -4;
		sfx_play_global(sfx_hurt);
		hurt_timer_set(120);
		collider_attach_clear();
		angle = 0;
		instance_attach = undefined;
		animate_speed = 0;
		rubber_band_can_slingshot = true;
		physics = player_physics_modifiers.normal;
	}
	
	player_water_step();
	
	if (underwater || button_jump == controls_action_states.press)
		state_next_set(player_states.normal);
		
	if (!room_transition_active_get() && button_pause == controls_action_states.press)
		game_pause(player_number);
	
	jump_buffer = max(jump_buffer - 1, 0);

	if (speed_v < speed_fall)
		speed_v += min(speed_grv, speed_fall - speed_v);
	coyote_time = max(coyote_time - 1, 0);
		
	x += speed_h;
	y += speed_v;
		
	switch sign(x - x_previous)
	{
		case -1:
			collision_right(,,,,,, false);
			collision_left();
			break;
		case 0:
			collision_left();
			collision_right();
			break;
		case 1:
			collision_left(,,,,,, false);
			collision_right();
			break;
	}
		
	switch sign(y - y_previous)
	{
		case -1:
			collision_down(,,,,,, false);
			collision_up();
			break;
		case 0:
		case 1:
			collision_up();
			collision_down(,,,,, true);
			angle_ground = global.collider_collision[collider_collision.angle];
			break;
	}
		
	_collision_left = collision_flag_get_left();
	_collision_up = collision_flag_get_up();
	_collision_right = collision_flag_get_right();
	_collision_down = collision_flag_get_down();
		
	if (_collision_left)
	{
		if (speed_h < 0)
			speed_h = 0;
		state_next_set(player_states.normal, 9);
	}
	if (_collision_right)
	{
		if (speed_h > 0)
			speed_h = 0;
		state_next_set(player_states.normal, 9);
	}
	if (_collision_up)
	{
		if (speed_v < 0)
		{
			speed_v = 0;
			sfx_play_global(sfx_honk);
		}
		state_next_set(player_states.normal, 9);
	}
	if (_collision_down)
	{
		if (speed_v > 0)
		{
			speed_v = 0;
			ground_on = true;
			ball = false;
			state_next_set(player_states.normal, 9);
			hitbox.flags_to_check = bit_set(hitbox.flags_to_check, hitbox_flags.player);
			hitbox.flags_to_check = bit_set(hitbox.flags_to_check, hitbox_flags.enemy);
			hitbox.flags_to_check = bit_set(hitbox.flags_to_check, hitbox_flags.attack);
			hitbox.flags_to_check = bit_set(hitbox.flags_to_check, hitbox_flags.misc);
		}
	}
	else
		collider_attach_clear();
		
	player_fall();
		
	#region Sprites
		sprite_index = player_animation_get(character_index, player_animations.hurt);
		image_index = 0;
	#endregion
}
