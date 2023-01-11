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

if (keyboard_check_pressed(vk_space)) 
{
	var inst = instance_create_layer(x,y, "Instances", obj_bullet);
	inst.direction = image_angle
	motion_add(image_angle, -0.01);
}

move_wrap(true,true,sprite_width/2);