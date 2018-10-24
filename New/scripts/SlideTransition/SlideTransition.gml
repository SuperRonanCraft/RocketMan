/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3F894F69
/// @DnDArgument : "code" "/// @desc SlideTransition(mode, targetRoom)$(13_10)/// @arg Mode sets transition mode$(13_10)/// @arg Target sets target room when using goto mode$(13_10)$(13_10)with (oTransition) {$(13_10)	mode = argument[0];$(13_10)	if (argument_count > 1)$(13_10)		target = argument[1];$(13_10)}"
/// @desc SlideTransition(mode, targetRoom)
/// @arg Mode sets transition mode
/// @arg Target sets target room when using goto mode

with (oTransition) {
	mode = argument[0];
	if (argument_count > 1)
		target = argument[1];
}