//
//  main.cpp
//  DFA_for_TSP
//
//  Created by Юрий Рогачев on 15.05.2018.
//  Copyright © 2018 Юрий Рогачев. All rights reserved.
//

#include <iostream>
#include <vector>
#include "funcs.h"
#include "DFA.h"
using namespace std;

typedef vector<int> firefly;
typedef pair<double, double> city;

int main(int argc, const char * argv[]) {
    srand((unsigned int) time(NULL));
    
    vector<city> test(read_test("gr202.txt"));
    
    DFA tcp(test, 1000, 10, 80, 0.007);
    cout << tcp.solove_EDFA() << endl;
    return 0;
}
