#include "func.h"

#include <iostream> 
#include <stack>
#include <string>

using namespace std;

// 1 - opening bracket, 2 - closing bracket
int is_bracket(const char& c) {
    if (c == '(' || c == '[' || c == '{' || c == '<')
        return 1;
    
    if (c == ')' || c == ']' || c == '}' || c == '>')
        return 2;
    
    return 0;
}

bool match_brackets(const char& br1, const char& br2) {
    switch(br1) {
        case '(': 
            if(br2 == ')') return true; 
            break;
        case '[': 
            if(br2 == ']') return true;
            break;
        case '{':
            if(br2 == '}') return true;
            break;
        case '<':
            if(br2 == '>') return true;
            break;
        default: 
            return false;
    }
    return false;
}

bool is_correct(const string& expr) {
    stack<char> stc;

    for(int i = 0; i < expr.size(); i++){
        if (is_bracket(expr[i]) == 1) {
            stc.push(expr[i]);
        } else if (is_bracket(expr[i]) == 2) {
            if(stc.empty() || !match_brackets(stc.top(), expr[i])) {
                return false;
            } else stc.pop();
        }
    }
    if(stc.empty()) return true;
    return false;
}

set<string> higlight_vars(const string& expr){
    set<string> res;
    string buf;
    bool is_var = false;
    for(int i = 0; i < expr.size(); i++) {
        if(is_var){
            //here
            if(!is_bracket(expr[i]) && 
            !((int) expr[i] > 41 && (int) expr[i] < 48) && // not *, +, ,, -, ., /
            (int) expr[i] != 94) // not ^
            {
                buf.insert(buf.end(), expr[i]);
            }
            else {
                is_var = false;
                res.insert(buf);
                buf.clear();
            }
        } else if (((int) expr[i] >= 65 && (int) expr[i] <= 90) || // A-Z
                    ((int) expr[i] >= 97 && (int) expr[i] <= 122)) // a-z
            {
                is_var = true;
                buf.insert(buf.end(), expr[i]);
            }
    }

    if(!buf.empty())
        res.insert(buf);

    return res;
}

bool is_eq_sets(const set<string>& set1, const set<string>& set2) {
    for(auto itr = set1.begin(); itr != set1.end(); itr++){
        if(set2.find(*itr) == set2.end())
            return false;
    }

    for(auto itr = set2.begin(); itr != set2.end(); itr++){
        if(set1.find(*itr) == set1.end())
            return false;
    }

    return true;
}