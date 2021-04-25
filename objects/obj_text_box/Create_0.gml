/// @description Insert description here
//the box appears as a line
x1 =	RESOLUTION_W/2;
y1 =	RESOLUTION_H - (RESOLUTION_H*0.38) ;//70px from the bottom of the screen
x2 =	RESOLUTION_W/2;
y2 =	RESOLUTION_H;

x1_target = 4;
x2_target =RESOLUTION_W-4;

lerp_progress = 0;
textProgress = 0;//how many characters are shown in the message by the typewriter

light_color = c_white;
dark_color = c_black;
background = 0;

message_text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."