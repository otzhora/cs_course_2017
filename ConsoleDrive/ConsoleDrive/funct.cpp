#include "funct.h"
#include <Windows.h>
#include <iostream>
#include <conio.h>
using namespace std;

void DrawMainMenu()
{
	HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);
	SetConsoleCursorPosition(hConsole, { 2, 8 });
	cout << " PLAY ";
	SetConsoleCursorPosition(hConsole, { 2, 9 });
	cout << " SETTINGS ";
	SetConsoleCursorPosition(hConsole, { 2, 10 });
	cout << " EXIT ";

}

int AnalMainMenu()
{
	AnimateMainMenu();
	CONSOLE_SCREEN_BUFFER_INFO bi;
	HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);
	char key;
	SHORT y = 8;
	SetConsoleCursorPosition(hConsole, { 1, 8 });
	cout << '†';
	while (!_kbhit())
	{
		DrawMainMenu();
		GetConsoleScreenBufferInfo(GetStdHandle(STD_OUTPUT_HANDLE), &bi);
		key = _getch();
		if ((key == 'W' || key == 'w') && y > 8)
		{
			SetConsoleCursorPosition(hConsole, { 1, y });
			cout << ' ';
			SetConsoleCursorPosition(hConsole, { 1, --y });
			cout << '†';
		}
		else if ((key == 'S' || key == 's') && y < 10)
		{
			SetConsoleCursorPosition(hConsole, { 1, y });
			cout << ' ';
			SetConsoleCursorPosition(hConsole, { 1, ++y });
			cout << '†';
		}
		else if (key == ' ')
			switch (y)
			{
			case 8:
				return 0;
			case 9:
				return 1;
			case 10:
				return 2;
			}
	}
	return 2;
}

void AnimateMainMenu()
{
	HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);
	string* line = new string[5];
	line[4] = "--   --  ------  ----- --   --";
	line[3] = "||  /||  ||      |   | ||  /||";
	line[2] = "|| / ||  ||----  |   | || / ||";
	line[1] = "||/  ||  ||      |   | ||/  ||";
	line[0] = "--   --  ------  ----- --   --";
	SHORT y = 1;
	SetConsoleCursorPosition(hConsole, { 24, y });
	while (!_kbhit())
	{
		for (int i = 0; i < y - 1; i++) {
			for (int j = 0; j < line[i].length(); j++)
			{
				SetConsoleCursorPosition(hConsole, { (SHORT)j, (SHORT)i });
				cout << ' ';
			}
		}
		for (int i = 0; i < y; i++) {
			for (int j = 0; j < line[i].length(); j++)
			{
				SetConsoleCursorPosition(hConsole, { (SHORT)j, (SHORT)i });
				cout << line[i][j];

			}
			cout << endl;
		}

		if (y < 5)
			y++;
		else break;
		Sleep(750);
	}
}


void DrawClearField()
{
	HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);
	system("cls");
	SetConsoleCursorPosition(hConsole, { 0, 0 });
}



void AnalSettingsMenu(Settings& s)
{
	DrawClearField();
	cout << "Enter lvl: ";
	cin >> s.lvl;
	cout << "Enter speed: ";
	cin >> s.speed;
	s.speed = abs(100 - s.speed);
}

void DrawBeginLvl(Settings s, Lvl* lvls)
{
	HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);
	DrawClearField();
	SetConsoleCursorPosition(hConsole, { 0, 0 });
	for (int i = 0; i < s.hight; i++)
	{
		for (int j = 0; j < s.width; j++)
			cout << lvls[s.lvl].map[i][j];
		cout << endl;
	}
}



int StartGame(Settings s, Lvl* lvls)
{
	DrawBeginLvl(s, lvls);
	int result = Game(lvls[s.lvl], s.speed);
	while(FinishGame(result))
		StartGame(s, lvls);
	return result;
}	
int FinishGame(int result)
{
	if (result == 0)
	{
		DrawClearField();
		HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);
		SetConsoleCursorPosition(hConsole, { 9, 6 });
		cout << "YOU WIN\nWanna play agein???y/n";
		char c = getchar();
		if (c == 'y')
			return 1;

	}
	else if (result == 1)
	{
		DrawClearField();
		HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);
		SetConsoleCursorPosition(hConsole, { 9, 6 });
		cout << "YOU LOSE\nWanna play agein???y/n";
		char c = getchar();
		if (c == 'y')
			return 1;
	}
	return 0;
}
void DrawNext(Lvl lvl, SHORT y, SHORT coord)
{
	DrawClearField();
	for (int i = 0; i < 5; i++)
	{
		for (SHORT j = coord; j < min(lvl.lenght, 50 + coord); j++)
			cout << lvl.map[i][j];
		cout << endl;
	}
	HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);
	SetConsoleCursorPosition(hConsole, { 0, y });
	cout << '@';
}
int Game(Lvl lvl, SHORT speed)
{
	HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);
	SetConsoleCursorPosition(hConsole, { 0, 2 });
	cout << "@";
	SHORT coord = 0;
	SHORT y = 2;
	
	while (true)
	{
		if (abs(coord) >= lvl.lenght)
			return 0  ;
		bool presed = false;
		if (_kbhit())
		{
			presed = true;
			char c = _getch();
			if ((c == 'W' || c == 'w') && y > 0)
			{
				SetConsoleCursorPosition(hConsole, { 0, y });
				cout << ' ';
				SetConsoleCursorPosition(hConsole, { 0, --y });
				coord++;
				cout << '@';
			}
			else if ((c == 'S' || c == 's') && y < 4)
			{
				SetConsoleCursorPosition(hConsole, { 0, y });
				cout << ' ';
				SetConsoleCursorPosition(hConsole, { 0, ++y });
				coord++;
				cout << '@';
			}
		}
		if (lvl.map[y][coord] == '#')
			return 1;
		if (lvl.map[y][coord] == 'c')
			ClerBonus(lvl, coord, 1);
		SetConsoleCursorPosition(hConsole, { 0, y });
		cout << ' ';
		
		coord++;
		DrawNext(lvl, y, coord);
		if (lvl.map[y][coord-1] == 'c')
			ClerBonus(lvl, coord, 1);
		Sleep(speed);
	}
	
	return 0;
}


void ClerBonus(Lvl lvl, SHORT coord, int l)
{
	HANDLE hConsole = GetStdHandle(STD_OUTPUT_HANDLE);

	for(SHORT i = 0; i < 5; i++)
		for (SHORT j = 1; j < min(20, lvl.lenght - coord); j++)
		{
			SetConsoleCursorPosition(hConsole, { i, j });
			cout << ' ';
		}
}