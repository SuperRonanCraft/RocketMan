letters = 0;
text = "This is a test String!\nSecond line!";
length = string_length(text);
text_current = "";
font = fPixel;
w = 0;
h = 0;
if (focus_camera)
	with (oCamera)
		follow = other.id