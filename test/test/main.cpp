#include <iostream>
#include <math.h>
#include <string>
#include <fstream>
#include <vector>
using namespace std;

int sum(int* a, int* b){
    *a = *a + *b;
    return 0;
}

int main()
{  
    int a = 0, b = 0;
    cin >> a >> b;
    sum(&a, &b);
    cout << a << endl;
    return 0;
}
