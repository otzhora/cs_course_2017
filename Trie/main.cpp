#include <iostream>
#include <fstream>
#include <cstring>
using namespace std;

struct node
{
    char *key;
    node *link;
    node *next;
    int len;

    node(char *str, int n): len(n)
    {
        link = 0;
        next = 0;
        key = new char[n];
        strncpy(key, str, n);
    }

    ~node()
    {
        delete[] key;
    }
};

int prefix(char* val1, int n, char* val2, int m)
{
    for(int i = 0; i < n; i++)
    {
        if(i == m || val1[i] != val2[i])
            return i;
    }
    return n;
}

void split(node* t, int k)
{
    node* p = new node(t->key+k, t->len-k);
    p->link = t->link;
    t->link = p;
    char *buf = new char[k];
    strncpy(buf, t->key, k);
    delete[] t->key;
    t->key = buf;
    t->len = k;
}

node* insert(node* t, char* key, int n=0)
{
    if(!n) n = strlen(key);
    if(!t) t = new node(key, n);
    int x = prefix(t->key, t->len, key, n);
    if(x == 0)
    {
        t->next = insert(t->next, key, n); 
    }
    else if(x < n)
    {
        if(x < t->len)
        {
            split(t, x);
        }
        t->link = insert(t->link, key+x, n-x);
    }
    // counting should be added here i guess
    return t;
}

node* find(node* t, char* key, int n=0)
{
    if(!n) n = strlen(key);
    if(!t) return 0;
    int x = prefix(t->key, t->len, key, n);
    if(x == 0) return find(t->next, key, n);
    if(x == n) return t;
    if(x == t->len) return find(t->link, key, n);
    return 0;
}

void print(node* t)
{
    if(!t) 
    {
        cout << "node end" << endl;
        return;
    }
    cout << t->key << endl;
    cout << " link: ";
    print(t->link);
    cout << " next: ";
    print(t->next);
}

char* make_word(char* word)
{
    int n = strlen(word);
    for(int i = 0; i < strlen(word); i++)
    {
        if((int) word[i] >= 65 && (int) word[i] <= 90)
        {
            word[i] = char((int) word[i] + 32);
        }
        if((int) word[i] >= 97 && (int) word[i] <= 122)
        {
            continue;
        }
    }
    return word;
}

int main(int argc, char **argv)
{
    if(argc == 1)
    {
        cerr << "vvedi imya fila" << endl;
        return 0;
    }

    ifstream in(argv[1]);
    char word[200];

    node* head = new node("", 0);

    while(in >> word)
    {
        insert(head, make_word(word));
    }

    //print(head);


    while(true){
        cout << "enter word you want to check: ";
        cin >> word;
        cout << endl;

        if(strcmp(word, "end") == 0) break;

        if(find(head, make_word(word)))
        {
            cout << "true" << endl;
        } else cout << "false" << endl;
    }


    return 0;
}