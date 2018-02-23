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

template <typename T>
void merge(vector<T>& a, int l, int m, int r){
    int i = 0;
    int j = 0;
    vector<T> buf(r-l);

    while(l + i < m && m + j < r){
        if(a[l + i] < a[m + j]){
            buf[i+j] = a[l+i];
            i++;
        } else {
            buf[i+j] = a[m+j];
            j++;
        }
    }

    while(l + i < m){
        buf[i+j] = a[l+i];
        i++;
    }

    while(m + j < r){
        buf[i+j] = a[m+j];
        j++;
    }

    for(int it = 0; it < i+j; it++){
        a[l+it] = buf[it];
    }
}

template <typename T>
void merge_sort_(vector<T>& a, int l, int r){
    if(r - l <= 1) return;
    int m = (l+r)/2;
    merge_sort_(a, l, m);
    merge_sort_(a, m, r);
    merge(a, l, m, r);
}

template <typename T>
void merge_sort(vector<T>& a){
    merge_sort_(a, 0, a.size());
}