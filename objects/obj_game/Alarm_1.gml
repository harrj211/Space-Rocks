if(lives != 0)
{
	instance_create_layer(room_width/2, room_height/2, "Instances", obj_ship);
	global.iframe = 1
	
	with(obj_ship)
	{
		if (global.skin = 0)
		{
			sprite_index = spr_ship_frame
		}
		
		if (global.skin = 1)
		{
			sprite_index = spr_ship_historical
		}
	}
	
}

alarm[2] = room_speed*2;


