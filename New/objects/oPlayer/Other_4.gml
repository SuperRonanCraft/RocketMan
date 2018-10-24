/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 43FF3592
/// @DnDArgument : "code" "/// @desc Auto Save$(13_10)$(13_10)//Overwrite old save$(13_10)if (file_exists(SAVEFILE))$(13_10)	file_delete(SAVEFILE);$(13_10)	$(13_10)//Create new save$(13_10)var file;$(13_10)file = file_text_open_write(SAVEFILE);$(13_10)file_text_write_real(file, room);$(13_10)file_text_close(file);"
/// @desc Auto Save

//Overwrite old save
if (file_exists(SAVEFILE))
	file_delete(SAVEFILE);
	
//Create new save
var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file, room);
file_text_close(file);