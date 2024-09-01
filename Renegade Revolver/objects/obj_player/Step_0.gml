/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 168A20D4
/// @DnDArgument : "key" "vk_up"
var l168A20D4_0;
l168A20D4_0 = keyboard_check(vk_up);
if (l168A20D4_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 54FEC3C0
	/// @DnDParent : 168A20D4
	/// @DnDArgument : "value" "-10"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	y += -10;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 24288CE4
/// @DnDArgument : "key" "vk_down"
var l24288CE4_0;
l24288CE4_0 = keyboard_check(vk_down);
if (l24288CE4_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 73417B8A
	/// @DnDParent : 24288CE4
	/// @DnDArgument : "value" "10"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	y += 10;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 720FC96B
/// @DnDArgument : "key" "vk_left"
var l720FC96B_0;
l720FC96B_0 = keyboard_check(vk_left);
if (l720FC96B_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 0721C93B
	/// @DnDParent : 720FC96B
	/// @DnDArgument : "value" "-10"
	/// @DnDArgument : "value_relative" "1"
	x += -10;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5F135056
/// @DnDArgument : "key" "vk_right"
var l5F135056_0;
l5F135056_0 = keyboard_check(vk_right);
if (l5F135056_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 214B4DB5
	/// @DnDParent : 5F135056
	/// @DnDArgument : "value" "10"
	/// @DnDArgument : "value_relative" "1"
	x += 10;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 605A0966
var l605A0966_0;
l605A0966_0 = mouse_check_button_pressed(mb_left);
if (l605A0966_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7FBBF7D6
	/// @DnDParent : 605A0966
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDSaveInfo : "objectid" "obj_bullet"
	instance_create_layer(x + 0, y + 0, "Instances", obj_bullet);

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0893B7F7
	/// @DnDApplyTo : {obj_revolver}
	/// @DnDParent : 605A0966
	/// @DnDArgument : "spriteind" "spr_revolverFire"
	/// @DnDSaveInfo : "spriteind" "spr_revolverFire"
	with(obj_revolver) {
	sprite_index = spr_revolverFire;
	image_index = 0;
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 701CB01A
	/// @DnDParent : 605A0966
	/// @DnDArgument : "steps" "15"
	/// @DnDArgument : "alarm" "10"
	alarm_set(10, 15);
}