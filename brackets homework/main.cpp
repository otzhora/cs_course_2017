#include "func.h"

#include <iostream>
#include <stack>
#include <string> 

#include "gtest/gtest.h"
using namespace std;

int main(int argc, char** argv){
    if (argc != 2) {
        cerr << "You should enter only expression with brackets" << endl;
        return 1;
    }

    if(is_correct(argv[1]))
        cout << "expression is correct!" << endl;
    else cout << "expression is not correct" << endl;
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}