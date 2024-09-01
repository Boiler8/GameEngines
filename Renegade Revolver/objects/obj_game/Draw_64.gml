/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6E94E340
/// @DnDArgument : "x" "10"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "caption" "points"
draw_text(10, 10, string(points) + "");

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 522AE779
/// @DnDArgument : "obj" "obj_player"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_player"
var l522AE779_0 = false;
l522AE779_0 = instance_exists(obj_player);
if(!l522AE779_0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 2B6EB849
	/// @DnDParent : 522AE779
	/// @DnDArgument : "x" "450"
	/// @DnDArgument : "y" "450"
	/// @DnDArgument : "caption" ""Game Over! You Scored: ""
	/// @DnDArgument : "var" "points"
	draw_text(450, 450, string("Game Over! You Scored: ") + string(points));
}