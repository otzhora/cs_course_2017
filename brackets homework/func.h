#pragma once 

#include <iostream> 
#include <stack>
#include <string> 
#include <set>
#include "gtest/gtest.h"
using namespace std;

// 1 - opening bracket, 2 - closing bracket
int is_bracket(const char& c);

bool is_correct(const string& expr);

// br1 - opening bracket, br2 - closing braket
bool match_brackets(const char& br1, const char& br2);

set<string> higlight_vars(const string& expr);

bool is_eq_sets(const set<string>& set1, const set<string>& set2);