//
//  bin_search_tree.cpp
//  binary_search_tree
//
//  Created by Юрий Рогачев on 22.01.2018.
//  Copyright © 2018 Юрий Рогачев. All rights reserved.
//

#include "bin_search_tree.h"

#include <iostream>
using namespace std;

void tree::insert(int key) {
    insert_node(key, root);
}

void tree::insert_node(int key, node*& p) {
    if (!p) {
        p = new node(key);
        return;
    }
    
    if (key < p->key){
        if (p->left) insert_node(key, p->left);
        else p->left = new node(key);
    } else {
        if(p->right) insert_node(key, p->right);
        else p->right = new node(key);
    }
}

ostream& operator<<(ostream& os, const node& p){
    if(p.initiated) os << p.key << " ";
    if(p.left) os << *p.left;
    if(p.right) os << *p.right;
    return os;
}

ostream& operator<<(ostream& os, const tree& t){
    os << *t.root << " ";
    return os;
}
