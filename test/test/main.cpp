#include <iostream>
#include <math.h>
#include <string>
#include <fstream>
#include <vector>
using namespace std;

int main()
{  
    vector<vector<int>> x(10, vector<int> (10) );
    for(int i = 0; i < 10; i++) {
        for(int j = 0; j < 10; j++) {
            x[i][j] = j + 1;
        }
        random_shuffle(x[i].begin(), x[i].end());
    }
    
    for(int i = 0; i < 10; i++) {
        for(int j = 0; j < 10; j++) {
            cout << x[i][j] << " ";
        }
        cout << endl;
    }
    return 0;
}
