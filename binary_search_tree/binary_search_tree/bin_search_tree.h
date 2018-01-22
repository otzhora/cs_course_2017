//
//  bin_search_tree.h
//  binary_search_tree
//
//  Created by Юрий Рогачев on 22.01.2018.
//  Copyright © 2018 Юрий Рогачев. All rights reserved.
//

#ifndef bin_search_tree_h
#define bin_search_tree_h

#include <iostream>
using namespace std;

struct node{
    int key;
    node* left;
    node* right;
    bool initiated;
    node(int key, node* left = 0, node* right = 0): key(key), left(left), right(right), initiated(true) { }
    node(): initiated(false) { }
    friend ostream& operator<<(ostream& os, const node& p);
};

class tree{
    node* root;
    
    void insert_node(int key, node*& p);
public:
    node* find(int key);
    
    void insert(int key);
    
    friend ostream& operator<<(ostream& os, const tree& t);
};

#endif /* bin_search_tree_h */
