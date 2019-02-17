#include <iostream>

using namespace std;

int main(){
  int n = 3;
  int s[3] = {3, 2, 1};

  for(int j = 0; j < n; j++) {

    for (int i = 0; i < n; i++)
    {
        if (s[i] > s[i+1])
        {
          int k = s[i];
          s[i] = s[i+1];
          s[i+1] = k;
        }
    }
  }

  for(int i = 0; i < n; i++) {
    cout << s[i] << " ";
  }


  return 0;
}


// Сортировка пузорьком

// 1) идешь по массиву и сравниваешь сосдине элементы
// и проверяешь правильность порядка
// 2) пока не отсоритрован массив
