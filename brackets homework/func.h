#pragma once 

#include <iostream> 
#include <stack>
#include <string> 

using namespace std;

// 1 - opening bracket, 2 - closing bracket
int is_bracket(const char& c);

bool is_correct(const string& expr);

// br1 - opening bracket, br2 - closing braket
bool match_brackets(const char& br1, const char& br2);