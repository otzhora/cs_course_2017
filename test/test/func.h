#ifndef func_h
#define func_h

int sqr(int n){
    return n*n;
}

union test{
    int ival;
    char cval;
} utest;

bool cmp(const int& a, const int& b){
    if (a > b) return true;
    return false;
}

void swap(int& a, int& b){
    int t = a;
    a = b;
    b = t;
}

void selection_sort(int *a, int n, bool (*comp)(const int&, const int&) = cmp){
    for(int i = 0; i < n - 1; i++){
        int idx = 0;
        for(int j = 1; j < n - i; j++){
            if(cmp(a[idx], a[j])){
                idx = j;
            }
        }
        swap(a[idx], a[n-i-1]);
    }
}
#endif /* func_h */
