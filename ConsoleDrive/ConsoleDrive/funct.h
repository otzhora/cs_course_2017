#pragma once
#include <Windows.h>
#include <string>
using namespace std;
struct Settings
{
	SHORT width;
	SHORT hight;
	SHORT lvl;
	SHORT speed;

	Settings() {}
	Settings(SHORT width, SHORT hight, SHORT lvl, SHORT speed) : width(width), hight(hight), lvl(lvl), speed(abs(100-speed)) {}
};

struct Lvl
{
	string* map;
	int lenght;
	Lvl(SHORT h, int lenght) : lenght (lenght)
	{
		map = new string[h];
	}

	Lvl() 
	{
		map = new string[5];
	}
};

void DrawMainMenu();

int AnalMainMenu();

void AnimateMainMenu();

int StartGame(Settings s, Lvl* lvls);

void DrawClearField();

int Game(Lvl lvl, SHORT speed);

int FinishGame(int result);

void AnalSettingsMenu(Settings& s);

void DrawBeginLvl(Settings s, Lvl* lvls);

void ClerBonus(Lvl lvl, SHORT coord, int l);