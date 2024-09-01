/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1FA643C6
/// @DnDArgument : "var" "obj_tnt.y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "-300"
if(obj_tnt.y < -300)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 273FCDAF
	/// @DnDParent : 1FA643C6
	/// @DnDArgument : "var" "spawnNum"
	/// @DnDArgument : "min" "1"
	/// @DnDArgument : "max" "10"
	spawnNum = (random_range(1, 10));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10DC1580
	/// @DnDParent : 1FA643C6
	/// @DnDArgument : "var" "spawnNum"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "5"
	if(spawnNum > 5)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 54AC6AFF
		/// @DnDParent : 10DC1580
		/// @DnDArgument : "xpos" "500"
		/// @DnDArgument : "ypos" "1300"
		/// @DnDArgument : "objectid" "obj_bottle"
		/// @DnDSaveInfo : "objectid" "obj_bottle"
		instance_create_layer(500, 1300, "Instances", obj_bottle);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5DE1A0E8
	/// @DnDParent : 1FA643C6
	else
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 501C46DB
		/// @DnDParent : 5DE1A0E8
		/// @DnDArgument : "xpos" "500"
		/// @DnDArgument : "ypos" "1300"
		/// @DnDArgument : "objectid" "obj_tnt"
		/// @DnDSaveInfo : "objectid" "obj_tnt"
		instance_create_layer(500, 1300, "Instances", obj_tnt);
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3E9517A5
	/// @DnDParent : 1FA643C6
	instance_destroy();
}