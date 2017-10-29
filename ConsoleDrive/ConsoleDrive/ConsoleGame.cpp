#include "funct.h"
#include <iostream>
#include<conio.h>
using namespace std;

int main()
{
	Lvl* lvls = new Lvl[2];
	lvls[0].map[0] = "       #                #             #        #                 ";
	lvls[0].map[1] = "             #                  #                          #     ";
	lvls[0].map[2] = "          #        #                       #         #           ";
	lvls[0].map[3] = "           #   c        #           #               #            ";
	lvls[0].map[4] = "       #                       #              #                  ";
	lvls[0].lenght = lvls[0].map[0].length();
	Settings settings(50, 5, 0, 50);
	switch (AnalMainMenu())
	{
	case 0: 
		StartGame(settings, lvls);
		break;
	case 1:
		AnalSettingsMenu(settings);
		StartGame(settings, lvls);
		break;
	}
	return 0;
}
