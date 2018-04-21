#include <iostream>
#include "polynomial.h"
#include <vector> 
#include <gtest/gtest.h>
using namespace std;

ostream& operator <<(ostream& s, const polynom& p) {
        for(int i = 0; i < p.deg-1; i++) {
            s << p.coef[i] << " * x^" << p.deg-i-1 << " + ";
        }
        s << p.coef[p.deg-1];
        return s;
}

int main(int argc, char** argv) {
    cout << "MAIN" << endl;
    double c[] = {1, 2, 3, 4, 5};
    polynom p(5, c);
    cout << p << endl;

    cout << "ENDMAIN" << endl;

    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}

