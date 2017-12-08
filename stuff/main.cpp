#include <iostream>
using namespace std;

struct Node{
    bool leaf;
    int n;
    int *key;
    Node **c;

    Node(int t) {
        leaf = true;
        n = 0;
        key = new int[2*t - 1];
        c = new Node*[2*t];
    }
};

struct BTree{
    int t;
    Node *root;

    BTree(int t): t(t) {
        root = NULL;
    }

    bool find(int val){
        return find_elem(root, val);
    }

    bool find_elem(Node* t, int val){
        int i = 0;
        while(i < t->n && t->key[i] < val)
            i++;

        if(t->key[i] == val)
            return true;

        if(t->leaf)
            return false;
        
        return find_elem(t->c[i], val);
    }

    void split(Node* x, int indx){
        Node* z = new Node(t);
        Node* y = x->c[indx];
        z->leaf = y->leaf;
        z->n = t-1;
        for(int j = 0; j < t-1; j++)
            z->key[j] = y->key[j+t];
        
        if(!y->leaf)
            for(int j = 0; j < t; j++)
                z->c[j] = y->c[j+t];

        y->n = t-1;

        for(int j = x->n; j >= indx+1; j--)
            x->c[j+1] = x->c[j];

        x->c[indx+1] = z;

        for(int j = x->n-1; j >= indx; j--)
            x->key[j+1] = x->key[j];
        
        x->key[indx] = y->key[t-1];

        x->n++;
    }
    
    void insert(int k){
        if(root == NULL)
        {
            root = new Node(t);
            root->leaf = true;
            root->key[0] = k;
            root->n++;
        } else {
            if(root->n == 2*t-1){
                Node* s = new Node(t);
                s->leaf = false;

                s->c[0] = root;
                split(s, 0);

                int i = 0;
                if(s->key[0] < k)
                    i++;
                insertNonFull(s->c[i], k);

                root = s;
            } else 
                insertNonFull(root, k);
        }
    }
    
    void insertNonFull(Node* x, int k) {
        int i = x->n-1;

        if(x->leaf == true) {
            while(i > 0 && x->key[i] > k)
            {
                x->key[i+1] = x->key[i];
                i--;
            }

            x->key[i+1] = k;
            x->n++;
        } else {
            while (i >= 0 && x->key[i] > k)
                i--;
            
            if(x->c[i+1]->n == 2*t-1){
                split(x, i+1);

                if(x->key[i+1] < k)
                    i++;
            }
            insertNonFull(x->c[i+1], k);
        }
    }

    void print(){
        if(!root)
            return;
        print_elem(root);
    }

    void print_elem(Node* x){
        for(int i = 0; i < x->n; i++) {
            if(!x->leaf) print_elem(x->c[i]);
            cout << " " << x->key[i];
        }
        if(!x->leaf) print_elem(x->c[x->n]);
    }
};

int main()
{
    BTree t(3);
    
    t.insert(10);
    t.insert(20);
    t.insert(5);
    t.insert(6);
    t.insert(12);
    t.insert(30);
    t.insert(7);
    t.insert(17);
    t.insert(13);
    for(int i = 0; i < 15; i++)
    {
        int x = rand() % 30;
        t.insert(x);
        cout << x << " ";
    }
    cout << endl;
    for(int i = 0; i < 30; i++)
    {
        cout << i << ": " << t.find(i) << endl;
    }
    cout << "0---------0" << endl;
    t.print();
    return 0;
}
