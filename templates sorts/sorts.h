#pragma once

#include <vector>
#include <iostream>
using namespace std;

template <typename T>
void print(vector<T>& a){
    for(int i = 0; i < a.size(); i++){
        cout << a[i] << " ";
    }
    cout << endl;
}

template <typename T>
void q_sort_(vector<T>& a, int l, int r);

template <typename T>
void q_sort(vector<T>& a){
    q_sort_(a, 0, a.size() - 1);
}

template <typename T>
void q_sort_(vector<T>& a, int l, int r){
    if(r - l < 1) return;

    int m = a[(l + r) / 2];
    int i = l, j = r;

    while(i <= j) {
        while (a[i] < m) i++;
        while (a[j] > m) j--;

        if(i <= j){
            swap(a[i], a[j]);
            i++;
            j--;
        }
    }

    q_sort_(a, l, j);
    q_sort_(a, i, r);

}