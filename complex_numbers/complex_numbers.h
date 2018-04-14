#ifndef COMPLEX
#define COMPLEX

#include <iostream>
using namespace std;

class complex_number{
    double r, i;

public:
    complex_number(double r, double i) : r(r), i(i){

    }

    const bool operator== (const complex_number& z1) {
        return (this->r == z1.r) && (this->i == z1.i); 
    }

    complex_number operator+(const complex_number& z) {
        return complex_number(this->r + z.r, this->i + z.i);
    }

    complex_number operator-(const complex_number& z) {
        return complex_number(this->r - z.r, this->i - z.i);
    }

    complex_number operator*(const complex_number& z) {
        return complex_number(this->r * z.r - this->i * z.i, this->r * z.i + z.r * this->i);
    }
    
    operator double() const{
        return this->r * this->r + this->i * this->i;
    }

    double operator[](const char s[]) {
        if(strcmp(s, "Re") == 0) {
            return this->r;
        } 

        if(strcmp(s, "Im") == 0) {
            return this->i;
        }

        return 0;
    }
    
    double operator[](char s[]) {
        if(strcmp(s, "Re") == 0) {
            return this->r;
        } 

        if(strcmp(s, "Im") == 0) {
            return this->i;
        }

        return 0;
    }
};

#endif