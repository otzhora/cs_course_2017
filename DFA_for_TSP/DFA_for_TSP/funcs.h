//
//  funcs.h
//  DFA_for_TSP
//
//  Created by Юрий Рогачев on 15.05.2018.
//  Copyright © 2018 Юрий Рогачев. All rights reserved.
//

#ifndef funcs_h
#define funcs_h

#define E 2.71828182846

#include <vector>
#include <string>
#include <iostream>
#include <fstream>
using namespace std;


vector< pair<double, double> > read_test(string name) {
    vector< pair<double, double> > ans;
    ifstream in(name);
    double b1, b2, b3;
    
    while( in >> b1) {
        in >> b2;
        in >> b3;
        ans.push_back(make_pair(b2, b3));
    }
    return ans;
}


#endif /* funcs_h */
