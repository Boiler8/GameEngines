/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 616B3757
/// @DnDArgument : "var" "points"
points = 0;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 1D36522B
/// @DnDArgument : "soundid" "revolverSpinSound"
/// @DnDSaveInfo : "soundid" "revolverSpinSound"
audio_play_sound(revolverSpinSound, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3215F4B9
/// @DnDArgument : "steps" "50"
/// @DnDArgument : "alarm" "8"
alarm_set(8, 50);