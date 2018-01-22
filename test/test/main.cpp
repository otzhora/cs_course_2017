#include <GL/glut.h>
#include <iostream>
#include <math.h>
#include <string>
#include <fstream>
#include <vector>

int count = 0;  // Размер масива У,Х
float* X; // масив для хранение х-ов
float* Y; // масив для хранения у-ов

void display(){                    // Функция перерисовки дисплея
    glClear(GL_COLOR_BUFFER_BIT);
    glBegin(GL_LINES);
    
    glColor3f(1.0, 0.0, 0.0);
    glVertex3f(0, 50, 0);   // Рисование системи координат
    glVertex3f(0, -50, 0);
    glVertex3f(-50, 0, 0);
    glVertex3f(50, 0, 0);
    
    for(int i = -11; i < 8; i++){
        glVertex3f(10 + i * 5, -2, 0);
        glVertex3f(10 + i * 5, 2, 0);
    }
    
    for(int i = -11; i < 8; i++){
        glVertex3f(-2, 10 + i * 5, 0);
        glVertex3f(2, 10 + i * 5, 0);
    }// Конец рисования системы крдинат
    
    glEnd();
    
    glBegin(GL_POINTS); // Рисование точок графика функции
    float y;
    for(int i = 0; i < count; i++){
        glVertex3f(X[i], Y[i], 0);
    }
    glEnd();
    glutSwapBuffers();
}


int main(int argc, char** argv)
{
    std::vector<float> arr;  // Вектор в котором будем хранить даные из файла
    std::ifstream fin;       // Для вивода даних из файла
    std::string path;        // Путь к файлу
    do{                      // Цикл который обеспечывает открития файла
        std::cout<<"Enter path: ";
        std::cin>>path;
        fin.open(path.c_str());
        if(!fin.is_open()){
            std::cout<<"Error: File not find!\n";
        }
    }while(!fin.is_open());
    
    float i = 0.0;
    while(!fin.eof()){  // Запись даних из файла в вектор
        fin>>i;
        arr.push_back(i);
    }
    fin.close();
    
    for(int j = 0; j < arr.size(); j++){  // Цикл для подсчота х-ов в диапазоне
        if(arr[j] > -50.0 && arr[j] < 50.0) // [-50;50]
        {
            count++;
        }
    }
    X = new float[count];  // Создание масива с х
    Y = new float[count];  // Создание масива с У
    
    int n = 0;
    for(int j = 0; j < arr.size(); j++){  // Цыкл для записи даних(х) указаного
        if(arr[j] > -50.0 && arr[j] < 50.0){ // диапазона в масив Х
            X[n] = arr[j];
            n++;
        }
    }
    
    for(int j = 0; j < count; j++){
        Y[j] = 2*sin(X[j])*pow(M_E,4/5);  // Заполнение масива У
    }
    // Стандартное создание окна в OpenGl
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB);
    glutInitWindowSize(400, 400);
    glutInitWindowPosition(20, 810);
    glutCreateWindow("Rownanie");
    glClearColor(0, 0, 0, 0);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(-55, 55, -55, 55, -100, 100);
    glutDisplayFunc(display);
    glutMainLoop();
    delete [] X;
    delete [] Y;
}
