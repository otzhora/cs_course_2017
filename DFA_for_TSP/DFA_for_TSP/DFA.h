//
//  DFA.h
//  DFA_for_TSP
//
//  Created by Юрий Рогачев on 17.05.2018.
//  Copyright © 2018 Юрий Рогачев. All rights reserved.
//

#ifndef DFA_h
#define DFA_h

#define E 2.71828182846
#define x first
#define y second

#include <vector>
#include <cmath>
#include <algorithm>
#include <iostream>
using namespace std;

typedef vector<int> firefly;
typedef pair<double, double> city;
typedef pair<int, int> node;

class DFA {
    vector<firefly> ffs;
    vector<city> cities;
    vector<double> br;
    double l_coef;
    int p;
    size_t n;
    int m;
    int reps;
    
private:
    
    double dist_eu(int c1, int c2) {
        return sqrt(pow(cities[c1].x - cities[c2].x, 2) + pow(cities[c1].y - cities[c2].y, 2));
    }
    
    double brightess(int f1) {
        double dist_route = dist_eu(ffs[f1][0], ffs[f1][n-1]);
        
        for(int i = 0; i < n - 1; i++) {
            dist_route += dist_eu(ffs[f1][i], ffs[f1][i+1]);
        }
        return 1.0 / dist_route;
    }
    
    double brightess_(firefly f) {
        double dist_route = dist_eu(f[0], f[n-1]);
        
        for(int i = 0; i < n - 1; i++) {
            dist_route += dist_eu(f[i], f[i+1]);
        }
        return 1.0 / dist_route;
    }
    
    double dist(int f1, int f2) {
        int A = 0;
        for(int i = 0; i < n - 1; i++) {
            bool mark = false;
            
            for(int j = 0; j < n - 1; j++) {
                if((ffs[f1][i] == ffs[f2][j] && ffs[f1][i+1] == ffs[f2][j+1]) || (ffs[f1][i] == ffs[f2][j+1] && ffs[f1][i+1] == ffs[f2][j])) {
                    mark = true;
                    break;
                }
            }
            
            if(!mark) A++;
        }
        
        return (double) A*10/n;
    }
    
    double attractivness(int f1, int f2) {
        double r = dist(f1, f2);
        if(f1 == f2 || r == 0) return br[f1];
        
        return br[f2]/pow(E, l_coef*pow(r, 2));
    }
    
    void calc_brightness() {
        for(int i = 0; i < p; i++)
            br[i] = brightess(i);
    }
    
    int get_most_attractive_firefly(int f1) {
        int ans = f1;
        double ans_attr = 0;
        
        for(int i = 0; i < p; i++) {
            if(br[i] > br[f1] && attractivness(f1, i) > ans_attr) {
                ans = i;
                ans_attr = attractivness(f1, i);
            }
        }
        
        return ans;
    }
    
    vector<firefly> edge_based_movement(int f1, int f2) {
        vector<node> edges;
        vector<int> pos;
        
        for(int i = 0; i < n - 1; i++) {
            bool mark = false;
            for(int j = 0; j < n - 1; j++) {
                if((ffs[f2][i] == ffs[f1][j] && ffs[f2][i+1] == ffs[f1][j + 1]) || (ffs[f2][i] == ffs[f1][j+1] && ffs[f2][i+1] == ffs[f1][j])) {
                    mark = true;
                    break;
                }
            }
            if(!mark) {
                edges.push_back(make_pair(ffs[f2][i], ffs[f2][i+1]));
                pos.push_back(i);
            }
        }
        if(edges.size() == 0) return vector<firefly>(0);
        int idx = rand() % edges.size();
        int xx = 0, yy = 0;
        
        for(int i = 0; i < n; i++) {
            if(ffs[f1][i] == edges[idx].x) {
                xx = i;
            }
            if(ffs[f1][i] == edges[idx].y) {
                yy = i;
            }
        }
        
        int x1 = xx, x2 = xx;
        int y1 = yy, y2 = yy;
        vector<firefly> ans;
        
        int j = pos[idx]-1;
        for(int i = xx - 1; i >= 0; i--) {
            if(ffs[f1][i] == ffs[f2][j]) {
                x1--;
                j--;
            } else break;
        }
        
        j = pos[idx] + 1;
        for(int i = xx + 1; i < n; i++) {
            if(ffs[f1][i] == ffs[f2][j]) {
                x2 ++;
                j++;
            } else break;
        }
        
        j = pos[idx] + 1;
        for(int i = yy-1; i >= 0; i--) {
            if(ffs[f1][i] == ffs[f2][j]) {
                y1--;
                j--;
            } else break;
        }
        
        j = pos[idx] + 2;
        for(int i = yy + 1; i < n; i++) {
            if(ffs[f1][i] == ffs[f2][j]) {
                y2++;
                j++;
            } else break;
        }
        
        firefly buf;
        
        if(xx > yy) {
            swap(x1, y1);
            swap(x2, y2);
            swap(xx, yy);
            //cout << "swap" << endl;
        }
        
        if(xx == x1 && xx != x2) {
            reverse(ffs[f1].begin() + xx, ffs[f1].begin() + x2);
            xx = x2;
            //cout << "xx" << endl;
        }
        
        if(yy == y2 && yy != y1) {
            reverse(ffs[f1].begin() + yy, ffs[f1].begin() + y2);
            yy = y1;
            //cout << "yy" << endl;
        }
        
        if (xx < yy) {
            // s1
            for(int i = 0; i < x1; i++) {
                buf.push_back(ffs[f1][i]);
            }
            for(int i = xx+1; i < y1; i++) {
                buf.push_back(ffs[f1][i]);
            }
            for(int i = x1; i <= x2; i++) {
                buf.push_back(ffs[f1][i]);
            }
            for(int i = y1; i < n; i++) {
                buf.push_back(ffs[f1][i]);
            }
            
            if(buf.size() != n) {
                cout << "ALERT 1" << endl;
            }
            ans.push_back(buf);
            buf.clear();
            buf.resize(0);
            
            // s2
            for(int i = 0; i < x1; i++) {
                buf.push_back(ffs[f1][i]);
            }
            for(int i = xx+1; i < y1; i++) {
                buf.push_back(ffs[f1][i]);
            }
            for(int i = y2; i >= y1; i--) {
                buf.push_back(ffs[f1][i]);
            }
            for(int i = x2; i >= x1; i--) {
                buf.push_back(ffs[f1][i]);
            }
            for(int i = y2 + 1; i < n; i++){
                buf.push_back(ffs[f1][i]);
            }
            
            if(buf.size() != n) {
                cout << "ALERT 2" << endl;
            }
            ans.push_back(buf);
            buf.clear();
            buf.resize(0);
            
            // s3
            for(int i = 0; i < x1; i++) {
                buf.push_back(ffs[f1][i]);
            }
            for(int i = y2; i >= y1; i--) {
                buf.push_back(ffs[f1][i]);
            }
            for(int i = x2; i >= x1; i--) {
                buf.push_back(ffs[f1][i]);
            }
            for(int i = xx+1; i < y1; i++) {
                buf.push_back(ffs[f1][i]);
            }
            for(int i = y2 + 1; i < n; i++){
                buf.push_back(ffs[f1][i]);
            }
            
            if(buf.size() != n) {
                cout << "ALERT 3" << endl;
            }
            ans.push_back(buf);
            buf.clear();
            buf.resize(0);
            
            // s4
            for(int i = 0; i < x1; i++) {
                buf.push_back(ffs[f1][i]);
            }
            for(int i = x1; i <= x2; i++) {
                buf.push_back(ffs[f1][i]);
            }
            for(int i = y1; i <= y2; i++) {
                buf.push_back(ffs[f1][i]);
            }
            for(int i = xx+1; i < y1; i++) {
                buf.push_back(ffs[f1][i]);
            }
            for(int i = y2 + 1; i < n; i++){
                buf.push_back(ffs[f1][i]);
            }
            
            if(buf.size() != n) {
                cout << "ALERT 4" << endl;
            }
            ans.push_back(buf);
            buf.clear();
            buf.resize(0);
        }
        return ans;
    }
    
    firefly move_random(int f1) {
        firefly ans;
        /*int p1 = rand() % n;
        int p2 = 5;
        for(int i = 0; i <= p1; i++) {
            ans.push_back(ffs[f1][i]);
        }
        for(int i = min(p1+p2,(int) n-1); i > p1; i--) {
            ans.push_back(ffs[f1][i]);
        }
        for(int i = p1+p2+1; i < n; i++) {
            ans.push_back(ffs[f1][i]);
        }*/
        ans.resize(n);
        for(int i = 0; i < n; i++) {
            ans[i] = ffs[f1][i];
        }
        int xi = rand()%n;
        int xj = rand()%n;
        swap(ans[xi], ans[xj]);
        return ans;
    }
    
    static bool cmp(pair<double, int>& p1, pair<double, int>& p2){
        if(p1.x > p2.x){ return true; }
        return false;
    }
    
    vector<firefly> get_brightest_fireflies(vector<firefly> temp) {
        vector<pair<double, int>> sorts(temp.size());
        vector<firefly> ans;
        for(int i = 0; i < temp.size(); i++) {
            sorts[i].x = brightess_(temp[i]);
            sorts[i].y = i;
        }
        sort(sorts.begin(), sorts.end(), cmp);
        
        for(int i = 0; i < p; i++) {
            ans.push_back(temp[sorts[i].y]);
        }
        return ans;
    }
    
    double get_min_route(vector<firefly> f) {
        vector<double> ans;
        for(int i = 0; i < p; i++) {
            double buf = dist_eu(f[i][0], f[i][n-1]);
            for(int j = 0; j < n - 1; j++) {
                buf += dist_eu(f[i][j], f[i][j+1]);
            }
            ans.push_back(buf);
        }
        return *min_element(ans.begin(), ans.end());
    }
    
    firefly inv_mut(int f1, int f2) {
        int A = 0;
        for(int i = 0; i < n - 1; i++) {
            bool mark = false;
            
            for(int j = 0; j < n - 1; j++) {
                if((ffs[f1][i] == ffs[f2][j] && ffs[f1][i+1] == ffs[f2][j+1]) || (ffs[f1][i] == ffs[f2][j+1] && ffs[f1][i+1] == ffs[f2][j])) {
                    mark = true;
                    break;
                }
            }
            
            if(!mark) A++;
        }
        
        int xi = rand() % A + 2;
        int p1 = rand() % n;
        int p2 = min((int)n-1, p1 + xi);
        firefly ans;
        
        ans.resize(n);
        for(int i = 0; i < n; i++) {
            ans[i] = ffs[f1][i];
        }
        reverse(ans.begin() + p1, ans.begin() + p2);
        return ans;
    }
public:
    
    DFA(vector<city>& cts, int reps = 1000, int p = 5, int m = 11, double l_coef = 0.007) : reps(reps), p(p), m(m), l_coef(l_coef) {
        n = cts.size();
        cities.resize(n);
        for(int i = 0; i < n; i++)
            cities[i] = cts[i];
        
        ffs.resize(p);
        for (int i = 0; i < p; i++) {
            ffs[i].resize(n);
            for(int j = 0; j < n; j++) {
                ffs[i][j] = j;
            }
            random_shuffle(ffs[i].begin(), ffs[i].end());
        }
        
        br.resize(p);
    }
    
    double solove() {
        vector<firefly> temp;
        for(int k = 0; k < reps; k++) {
            calc_brightness();
            for(int i = 0; i < p; i++) {
                int f = get_most_attractive_firefly(i);
                if(f != i) {
                    vector<firefly> fnew(edge_based_movement(i, f));
                    if(fnew.size() == 0) {
                        for(int j = 0; j < m; j++) {
                            firefly fnew(move_random(i));
                            temp.push_back(fnew);
                        }
                    } else {
                        temp.push_back(fnew[rand()%4]);
                        //cout << "ebm" << endl;
                    }
                } else {
                    for(int j = 0; j < m; j++) {
                        firefly fnew(move_random(i));
                        temp.push_back(fnew);
                    }
                }
            }
            ffs = get_brightest_fireflies(temp);
            temp.clear();
            temp.resize(0);
        }
        
        return get_min_route(ffs);
    }
    
    double solove_EDFA() {
        vector<firefly> temp;
        for(int k = 0; k < reps; k++) {
            calc_brightness();
            for(int i = 0; i < p; i++) {
                int f = get_most_attractive_firefly(i);
                if(f!= i && br[f] != br[i]) {
                    for(int j = 0; j < m; j++) {
                        firefly fnew = inv_mut(i, f);
                        temp.push_back(fnew);
                    }
                } else {
                    for(int j = 0; j < m; j++) {
                        firefly fnew = move_random(i);
                        temp.push_back(fnew);
                    }
                }
            }
            ffs = get_brightest_fireflies(temp);
            temp.clear();
            temp.resize(0);
        }
        return get_min_route(ffs);
    }
    
};

#endif /* DFA_h */
