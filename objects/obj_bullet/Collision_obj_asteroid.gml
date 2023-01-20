score += 10;

audio_play_sound(snd_boom, 1, false);

instance_destroy();

with(other)
{
	instance_destroy();
	
	if(sprite_index == spr_asteroid_big)
	{
		repeat (2)
		{
		var new_asteriod = instance_create_layer(x,y, "Instances", obj_asteroid);
		new_asteriod.sprite_index = spr_asteroid_med;
		}
	}
	else if(sprite_index == spr_asteroid_med)
	{
		repeat (3)
		{
		var new_asteriod = instance_create_layer(x,y, "Instances", obj_asteroid);
		new_asteriod.sprite_index = spr_asteroid_smol;
		}
	}
	
	repeat (10)
	{
	instance_create_layer(x,y, "Instances",obj_debris);
	}
}



