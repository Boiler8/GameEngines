/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 7C0E23CF
/// @DnDArgument : "soundid" "Gun_Smoke__NES__Music___Cheyenne_River"
/// @DnDSaveInfo : "soundid" "Gun_Smoke__NES__Music___Cheyenne_River"
audio_stop_sound(Gun_Smoke__NES__Music___Cheyenne_River);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 31BDE5BD
/// @DnDArgument : "soundid" "Gun_Smoke__NES__Music___Game_Over"
/// @DnDSaveInfo : "soundid" "Gun_Smoke__NES__Music___Game_Over"
audio_play_sound(Gun_Smoke__NES__Music___Game_Over, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 5C39118B
/// @DnDApplyTo : {obj_revolver}
/// @DnDArgument : "spriteind" "spr_revolverStill"
/// @DnDSaveInfo : "spriteind" "spr_revolverStill"
with(obj_revolver) {
sprite_index = spr_revolverStill;
image_index = 0;
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4E050829
/// @DnDApplyTo : {obj_bottle}
with(obj_bottle) instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4F589539
/// @DnDApplyTo : {obj_player}
with(obj_player) instance_destroy();

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 73522476
/// @DnDArgument : "x" "500"
/// @DnDArgument : "y" "500"
/// @DnDArgument : "caption" ""Game Over! You Scored: ""
/// @DnDArgument : "var" "points"
draw_text(500, 500, string("Game Over! You Scored: ") + string(points));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1EB2D0C2
/// @DnDArgument : "steps" "550"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 550);