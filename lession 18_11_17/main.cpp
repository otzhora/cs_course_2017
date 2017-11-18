#include <iostream>
#include <string>
using namespace std;


void print_menu()
{
    cout << "1. input matrix" << endl;
    cout << "2. print matrix" << endl;
    cout << "3. edit matrix" << endl;
    cout << "4. sum lines" << endl;
    cout << "5. line difference" << endl;
    cout << "6. exit" << endl;
    cout << endl << "enter number: ";
}

void input_matrix(int** &matrix, int& n, int& m)
{
    if(n != 0 || m != 0)
    {
        for(int i = 0; i < n; i++)
        {   
            if(matrix[i])
                delete[] matrix[i];
        }
        if(matrix)
            delete[] matrix;
        n = 0;
        m = 0;
    }
    cout << "enter number of lines and number of columns: ";
    cin >> n >> m;
    matrix = new int*[n];
    for(int i = 0; i < n; i++)
        matrix[i] = new int[m];
    cout << "enter matrix" << endl;
    for(int i = 0; i < n; i++)
        for(int j = 0; j < m; j++)
            cin >> matrix[i][j];
}

void print_matrix(int** matrix, int& n, int& m)
{
    if(n == 0 || m == 0)
    {
        cerr << "matrix does not exist. use input matrix to solove" << endl;
        return;
    }
    cout << "the matrix is: " << endl;
    for(int i = 0; i < n; i++)
    {
        for(int j = 0; j < m; j++)
            cout << matrix[i][j] << " ";
        cout << endl;
    }
}

void edit_matrix(int** matrix, int& n, int& m)
{
    if(n == 0 || m == 0)
    {
        cerr << "matrix does not exist. use input matrix to solove" << endl;
        return;
    }
    cout << "enter nubmer of line and column: ";
    int i, j;
    cin >> i >> j;
    if(i < 0 || i >= n || j < 0 || j >= m)
    {
        cerr << "wrong values. remember the indexes starts with 0" << endl;
        return;
    }
    cout << "enter value: ";
    int val;
    cin >> val;
    matrix[i][j] = val;
}

void sum_lines(int** matrix, int& n, int &m)
{
    if(n == 0 || m == 0)
    {
        cerr << "matrix does not exist. use input matrix to solove" << endl;
        return;
    }
    cout << "enter 1 number of line you want to sum and 2 number of line you want to sum with: ";
    int l1, l2;
    cin >> l1 >> l2;
    if(l1 < 0 || l1 >= n || l2 < 0 || l2 >= n)
    {
        cerr << "wrong values. remember the indexes starts with 0" << endl;
        return;
    }
    for(int i = 0; i < m; i++)
        matrix[l1][i] += matrix[l2][i];
}

void diff_line(int** matrix, int& n, int& m)
{
    if(n == 0 || m == 0)
    {
        cerr << "matrix does not exist. use input matrix to solove" << endl;
        return;
    }
    cout << "you know what to do: ";
    int l1, l2;
    cin >> l1 >> l2;
    if(l1 < 0 || l1 >= n || l2 < 0 || l2 >= n)
    {
        cerr << "wrong values. remember the indexes starts with 0" << endl;
        return;
    }
    for(int i = 0; i < m; i++)
        matrix[l1][i] -= matrix[l2][i];
}

int main()
{
    //main matrix
    int** matrix;
    int n = 0, m = 0;

    // main loop
    while(true)
    {
        print_menu();

        char key;
        cin >> key;
        switch (key)
        {
            case '1':
                input_matrix(matrix, n, m);
                break;

            case '2':
                print_matrix(matrix, n, m);
                break;

            case '3':
                edit_matrix(matrix, n, m);
                break;

            case '4':
                sum_lines(matrix, n, m);
                break;

            case '5':
                diff_line(matrix, n, m);
                break;

            case '6':
                return 0;
            default:
                cout << "symbol is incorrect. use 1-6" << endl;
        }
        cout << "----------------------------" << endl;
        
    }
}