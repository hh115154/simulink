#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <termios.h>
#include <term.h>
#include <ncurses.h>
#include <signal.h>
#include <libgen.h>
#include "cmd_process.h"


using namespace Robot;

LinuxCM730 linux_cm730("/dev/ttyUSB0");
CM730 cm730(&linux_cm730);

void change_current_dir()
{
    char exepath[1024] = {0};
    if(readlink("/proc/self/exe", exepath, sizeof(exepath)) != -1)
        chdir(dirname(exepath));
}

void sighandler(int sig)
{
	cm730.Disconnect();

	struct termios term;
	tcgetattr( STDIN_FILENO, &term );
	term.c_lflag |= ICANON | ECHO;
	tcsetattr( STDIN_FILENO, TCSANOW, &term );

	exit(0);
}

int main(int argc, char *argv[])
{
	signal(SIGABRT, &sighandler);
    signal(SIGTERM, &sighandler);
	signal(SIGQUIT, &sighandler);
	signal(SIGINT, &sighandler);

	char filename[128];
	change_current_dir();
	if(argc < 2)
		strcpy(filename, "walk_tuner.ini"); // Set default config file path
	else
		strcpy(filename, argv[1]);
	minIni* ini = new minIni(filename);

	//////////////////// Framework Initialize ////////////////////////////	
	if(MotionManager::GetInstance()->Initialize(&cm730) == false)
	{
		printf("Fail to initialize Motion Manager!\n");
		return 0;
	}
	Walking::GetInstance()->LoadINISettings(ini);
	MotionManager::GetInstance()->AddModule((MotionModule*)Walking::GetInstance());
	LinuxMotionTimer::Initialize(MotionManager::GetInstance());
	/////////////////////////////////////////////////////////////////////

	DrawIntro(&cm730);
	MotionManager::GetInstance()->SetEnable(true);

	while(1)
	{
		int ch = _getch();
		if(ch == 0x1b)
		{
			ch = _getch();
			if(ch == 0x5b)
			{
				ch = _getch();
				if(ch == 0x41) // Up arrow key
					MoveUpCursor();
				else if(ch == 0x42) // Down arrow key
					MoveDownCursor();
				else if(ch == 0x44) // Left arrow key
					MoveLeftCursor();
				else if(ch == 0x43)
					MoveRightCursor();
			}
		}
		else if( ch == '[' )
			DecreaseValue(false);
		else if( ch == ']' )
			IncreaseValue(false);
		else if( ch == '{' )
			DecreaseValue(true);
		else if( ch == '}' )
			IncreaseValue(true);
		else if( ch >= 'A' && ch <= 'z' )
		{
			char input[128];
			char *token;
			int input_len;
			char cmd[80];
			char strParam[20][30];
			int num_param;

			BeginCommandMode();

			printf("%c", ch);
			input[0] = (char)ch;

			gets(&input[1]);
			fflush(stdin);
			input_len = strlen(input);
			if(input_len > 0)
			{
				token = strtok( input, " " );
				if(token != 0)
				{
					strcpy( cmd, token );
					token = strtok( 0, " " );
					num_param = 0;
					while(token != 0)
					{
						strcpy(strParam[num_param++], token);
						token = strtok( 0, " " );
					}

					if(strcmp(cmd, "exit") == 0)
					{
						if(AskSave() == false)
							break;
					}
					if(strcmp(cmd, "re") == 0)
						DrawScreen();
					else if(strcmp(cmd, "save") == 0)
					{
						Walking::GetInstance()->SaveINISettings(ini);
						SaveCmd();
					}
					else if(strcmp(cmd, "mon") == 0)
					{
						MonitorCmd();
					}
					else if(strcmp(cmd, "help") == 0)
						HelpCmd();
					else
						PrintCmd("Bad command! please input 'help'");
				}
			}

			EndCommandMode();
		}
	}

	DrawEnding();
	return 0;
}