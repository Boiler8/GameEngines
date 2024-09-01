/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1D59AE88
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_game.points"
obj_game.points += 50;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 55A0F23F
/// @DnDApplyTo : {obj_bullet}
with(obj_bullet) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 5CF09420
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
effect_create_below(0, x + 0, y + 0, 0, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2A03ED41
/// @DnDArgument : "soundid" "bottle_breakSound"
/// @DnDSaveInfo : "soundid" "bottle_breakSound"
audio_play_sound(bottle_breakSound, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 3B094635
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "max" "360"
direction = (random_range(0, 360));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5AC22197
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "spr_bottle"
if(sprite_index == spr_bottle)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 286EC555
	/// @DnDParent : 5AC22197
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0DE9AD9E
	/// @DnDParent : 5AC22197
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_shard1"
	/// @DnDSaveInfo : "objectid" "obj_shard1"
	instance_create_layer(x + 0, y + 0, "Instances", obj_shard1);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7EA3BEA1
	/// @DnDParent : 5AC22197
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_shard2"
	/// @DnDSaveInfo : "objectid" "obj_shard2"
	instance_create_layer(x + 0, y + 0, "Instances", obj_shard2);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 49086B03
	/// @DnDParent : 5AC22197
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_shard3"
	/// @DnDSaveInfo : "objectid" "obj_shard3"
	instance_create_layer(x + 0, y + 0, "Instances", obj_shard3);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1BF2DA14
	/// @DnDParent : 5AC22197
	/// @DnDArgument : "var" "instance_number(obj_bottle) "
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(instance_number(obj_bottle)  < 1)
	{
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 73AEFAE7
		/// @DnDParent : 1BF2DA14
		/// @DnDArgument : "var" "spawnNum"
		/// @DnDArgument : "min" "1"
		/// @DnDArgument : "max" "10"
		spawnNum = (random_range(1, 10));
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5686061E
		/// @DnDParent : 1BF2DA14
		/// @DnDArgument : "var" "spawnNum"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "5"
		if(spawnNum > 5)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3475AF9D
			/// @DnDParent : 5686061E
			/// @DnDArgument : "xpos" "500"
			/// @DnDArgument : "ypos" "1300"
			/// @DnDArgument : "objectid" "obj_bottle"
			/// @DnDSaveInfo : "objectid" "obj_bottle"
			instance_create_layer(500, 1300, "Instances", obj_bottle);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 1A5B7E01
		/// @DnDParent : 1BF2DA14
		else
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 53445EB2
			/// @DnDParent : 1A5B7E01
			/// @DnDArgument : "xpos" "500"
			/// @DnDArgument : "ypos" "1300"
			/// @DnDArgument : "objectid" "obj_tnt"
			/// @DnDSaveInfo : "objectid" "obj_tnt"
			instance_create_layer(500, 1300, "Instances", obj_tnt);
		}
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 22D71585
		/// @DnDParent : 1BF2DA14
		/// @DnDArgument : "obj" "obj_tnt"
		/// @DnDSaveInfo : "obj" "obj_tnt"
		var l22D71585_0 = false;
		l22D71585_0 = instance_exists(obj_tnt);
		if(l22D71585_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2BB2012B
			/// @DnDParent : 22D71585
			/// @DnDArgument : "xpos" "500"
			/// @DnDArgument : "ypos" "1300"
			/// @DnDArgument : "objectid" "obj_bottle"
			/// @DnDSaveInfo : "objectid" "obj_bottle"
			instance_create_layer(500, 1300, "Instances", obj_bottle);
		}
	}
}