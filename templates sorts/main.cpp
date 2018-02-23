#include "sorts.h"

#include <vector>
#include <iostream>

using namespace std;

int main(){
    srand(time(NULL));

    int n;
    cin >> n;
    
    vector<int> a(n);
    for(int i = 0; i < n; i++) {
        a[i] = rand() % 100;
    }

    print(a);
    merge_sort(a);
    print(a);

    return 0;
}