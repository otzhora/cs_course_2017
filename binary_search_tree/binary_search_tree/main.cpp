//
//  main.cpp
//  binary_search_tree
//
//  Created by Юрий Рогачев on 22.01.2018.
//  Copyright © 2018 Юрий Рогачев. All rights reserved.
//

#include <iostream>

#include "bin_search_tree.h"
using namespace std;

int main(int argc, const char * argv[]) {
    tree t;
    int n, buf;
    cin >> n;
    for(int i = 0; i < n; i++){
        cin >> buf;
        t.insert(buf);
    }
    
    cout << t;
    
    return 0;
}
