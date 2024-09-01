/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 56C7C21F
/// @DnDArgument : "var" "obj_bottle.y"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "-100"
if(obj_bottle.y >= -100)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3BDB8E59
	/// @DnDApplyTo : {obj_game}
	/// @DnDParent : 56C7C21F
	/// @DnDArgument : "steps" "200"
	with(obj_game) {
	alarm_set(0, 200);
	
	}
}