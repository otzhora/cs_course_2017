
#include <iostream>
#include <algorithm>

#include <GL/glew.h>

#include <GLFW/glfw3.h>

using namespace std;

typedef pair<float, float> Point;

GLFWwindow *win;

void axle(){
   // glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
   // glClear(GL_COLOR_BUFFER_BIT);
    glLineWidth(3);
    glBegin(GL_LINES);
    {
        glColor3f(.4, .4, .4);
        glVertex2f(-1.0, 0);
        glVertex2f(1.0, 0);
        glVertex2f(0, -1.0);
        glVertex2f(0, 1.0);
    }
    glEnd();
    //glfwSwapBuffers(win);
}

void drawPoints(Point* a, int n){
    //glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    //glClear(GL_COLOR_BUFFER_BIT);
    glPointSize(12);
    glBegin(GL_POINTS);
    {
        glColor3f(1, 0, 0);
        for(int i = 0; i < n; i++){
            glVertex2f(a[i].first, a[i].second);
        }
    }
    glEnd();
}

void drawLines(Point* a, int n){
    glLineWidth(3);
    
    glBegin(GL_LINES);
    {
        glColor3f(0, 1, 0);
        for(int i = 1; i < n; i++){
            glVertex2f(a[i-1].first, a[i-i].second);
            glVertex2f(a[i].first, a[i].second);
        }
    }
    glEnd();
}

float calcVal(float* a, int n, float x){
    float ans = a[0];
    for(int i = 1; i < n; i++){
        ans = ans * x + a[i];
    }
    return ans;
}

Point* calcVals(float* a, int n){
    Point* ans = new Point[100];
    int i = 0;
    
    for(float x = -1; x < 1; x += 0.02){
        ans[i].first = x;
        ans[i].second = calcVal(a, n, x);
    }
    
    return ans;
}


int main(int argc, const char * argv[]) {
    
    
    if(!glfwInit())
        return -1;
    
    win = glfwCreateWindow(640, 480, "hello open gl base proj", NULL, NULL);
    
    if(!win){
        glfwTerminate();
        exit(EXIT_FAILURE);
    }
    
    if(!glewInit())
        return -1;
    
    glfwMakeContextCurrent(win);
    
    int n;
    cin >> n;
    Point* points = new Point[n];
    for(int i = 0; i < n; i++){
        //cin >> points[i].first >> points[i].second;
    }
    
    float* poly = new float[4];
    poly[0] = 2;
    poly[1] = 3;
    poly[2] = 4;
    poly[3] = 5;
    
    
    while(!glfwWindowShouldClose(win)){
        axle();
        //drawPoints(points, n);
        drawLines(calcVals(poly, 4), 100);
        glfwSwapBuffers(win);
        glfwPollEvents();
    }
    
    glfwTerminate();
    exit(EXIT_SUCCESS);
    
    return 0;
}


