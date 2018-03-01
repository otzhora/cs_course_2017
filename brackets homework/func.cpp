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