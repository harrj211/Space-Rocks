if (keyboard_check(ord("A"))) 
	{
		image_angle += 5;
	}

	if (keyboard_check(ord("D"))) 
	{
		image_angle -= 5;
	}

if (keyboard_check(ord("W"))) 
{
	motion_add(image_angle, 0.03);
}

if (keyboard_check(ord("S")))
{
	motion_add(image_angle, -0.01);
}

//Shoot
if(global.a10mode = 0)
{
	if (keyboard_check_pressed(vk_space)) 
	{
		var inst = instance_create_layer(x,y, "Instances", obj_bullet);
		inst.direction = image_angle
		motion_add(image_angle, -0.01);
		audio_play_sound(snd_bang, 1, false);
	}
}
if(global.a10mode = 1)
{
	if (keyboard_check(vk_space)) 
	{
		var inst = instance_create_layer(x,y, "Instances", obj_bullet);
		inst.direction = image_angle
		motion_add(image_angle, -0.01);
		audio_play_sound(snd_bang, 1, false);
	}
}

if(global.a10mode = 2)
{
	if (keyboard_check_pressed(vk_space)) 
	{
		repeat (5)
		{
			var inst = instance_create_layer(x,y, "Instances", obj_bullet);
			inst.direction = image_angle + irandom_range(0, 10);
			motion_add(image_angle, -0.03);
			audio_play_sound(snd_bang, 1, false);
		}
		repeat (5)
		{
			var inst = instance_create_layer(x,y, "Instances", obj_bullet);
			inst.direction = image_angle - irandom_range(0, 10);
			motion_add(image_angle, -0.03);
			audio_play_sound(snd_bang, 1, false);
		}
	}
}

move_wrap(true,true,sprite_width/2);

//skin stuff

//Frame skin
if(global.skin = 0 and global.a10mode = 0)
{
	sprite_index = spr_ship_frame;
}

if(global.skin = 0 and global.a10mode = 1)
{
	sprite_index = spr_ship_frame_1;
}

if(global.skin = 0 and global.a10mode = 2)
{
	sprite_index = spr_ship_frame_2;
}

//Historical skin
if(global.skin = 1 and global.a10mode = 0)
{
	sprite_index = spr_ship_historical;
}

if(global.skin = 1 and global.a10mode = 1)
{
	sprite_index = spr_ship_historical_1;
}

if(global.skin = 1 and global.a10mode = 2)
{
	sprite_index = spr_ship_historical_2;
}

//Night skin
if(global.skin = 2 and global.a10mode = 0)
{
	sprite_index = spr_ship_night;
}

if(global.skin = 2 and global.a10mode = 1)
{
	sprite_index = spr_ship_night_1;
}

if(global.skin = 2 and global.a10mode = 2)
{
	sprite_index = spr_ship_night_2;
}