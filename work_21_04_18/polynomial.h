#include <vector>
#include <iostream>
using namespace std;

class polynom{
    int deg;
    vector<double> coef;

    void update() {
        int i = 0;
        for(; i < coef.size() && coef[i] ==0; i++);
        if(i > 0) {
            coef.erase(coef.begin(), coef.begin() + i);
        }
        deg -= i;
        coef.resize(deg);
    }

    public:

    polynom(vector<double> c) {
        deg = c.size();
        coef.resize(deg);
        for(int i = 0; i < deg; i++) {
            coef[i] = c[i];
        }
        update();
    }

    polynom(int n, double c[]) {
        deg = n;
        coef.resize(deg);
        for(int i = 0; i < deg; i++) {
            coef[i] = c[i];
        }
        update();
    }

    const bool operator==(const polynom& p) {
        if(deg != p.deg) return false;
        for(int i = 0; i < deg; i++) {
            if(coef[i] != p.coef[i]) 
                return false;
        }
        return true;
    }

    polynom operator+(const polynom& p) {
        int mdeg = max(deg, p.deg);
        double* c = new double[mdeg];
        if(deg >= p.deg) {
            for(int i = 0; i < mdeg; i++) {
                if(mdeg - p.deg <= i) {
                    c[i] = coef[i] + p.coef[i - (mdeg - p.deg)];
                } else c[i] = coef[i];
            }
        } else {
            for(int i = 0; i < mdeg; i++) {
                if(mdeg - deg <= i) {
                    c[i] = p.coef[i] + coef[i - (mdeg - deg)];
                } else c[i] = p.coef[i];
            }
        }
        return polynom(mdeg, c);
    }

    polynom operator-(const polynom& p) {
        int mdeg = max(deg, p.deg);
        double* c = new double[mdeg];
        if(deg >= p.deg) {
            for(int i = 0; i < mdeg; i++) {
                if(mdeg - p.deg <= i) {
                    c[i] = coef[i] - p.coef[i - (mdeg - p.deg)];
                } else c[i] = coef[i];
            }
        } else {
            for(int i = 0; i < mdeg; i++) {
                if(mdeg - deg <= i) {
                    c[i] = p.coef[i] - coef[i - (mdeg - deg)];
                } else c[i] = p.coef[i];
            }
        }
        return polynom(mdeg, c);
    }

    polynom operator+(const double& num) {
        
        int mdeg = deg;
        if(deg == 0) mdeg = 1;
        double* c = new double[mdeg];
        for(int i = 0; i < mdeg; i++) {
            c[i] = coef[i];
        }
        c[mdeg-1] += num;
        return polynom(mdeg, c);
    }

    polynom operator*(const polynom& p) {
        
        int mdeg = deg + p.deg - 1;
        double* c = new double[mdeg];
        for(int i = 0; i < mdeg; i++) {
            c[i] = 0;
        }
        for(int i = 0; i < deg; i++)  {
            for(int j = 0; j < p.deg; j++)  {
                c[i+j] += coef[i] * p.coef[j];
            }
        }
        return polynom(mdeg, c);
    }
    
    friend ostream& operator<<(ostream& s, const polynom& p);
};
