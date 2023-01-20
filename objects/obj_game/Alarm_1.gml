if(lives != 0)
{
	instance_create_layer(room_width/2, room_height/2, "Instances", obj_ship);
	global.iframe = 1
}

alarm[2] = room_speed*2;


