#include <iostream>

using namespace std;

struct Node{

    int val;
    Node* next;

    Node(int val): val(val)
    {
        next = nullptr;
    }

    Node(int val, Node* next): val(val), next(next)
    {

    }
    
    Node()
    {
        val = 0;
        next = nullptr;
    }
};

struct iterator_{
    Node* p;

    iterator_()
    {

    }

    iterator_(Node* p): p(p)
    {
        
    }

    iterator_& operator++(int)
    {
        if(p->next != nullptr)
        {
            p = p->next;
            return *this;
        }
        return *this;
    }

    int operator*()
    {
        return p->val;
    }

    iterator_& operator=(Node* p_)
    {
        p = p_;
        return *this;
    }

    bool operator!=(iterator_ i)
    {
        return p != i.p;
    }

    bool operator>(iterator_ i)
    {
        return p->val>i.p->val;
    }
};

void swap(iterator_& a, iterator_& b)
{
    swap(a.p->val, b.p->val);
}


struct List
{
    Node* begin;
    Node* curr;
    iterator_ start;
    iterator_ end;

    List()
    {
        begin = new Node();
        curr = begin;
        Node* buf = new Node();
        begin->next = buf;
        start = begin;
        end = buf;
    }

    List(int val)
    {
        begin = new Node(val);
        start = begin;
        curr = new Node();
        begin->next = curr;
        end = curr;
    }

    void add(int val)
    {
        curr->val = val;
        Node* buf = new Node();
        curr->next = buf;
        curr = buf;
        end = buf;
    }

    void print()
    {
        curr = begin;
        do
        {
            cout << curr->val << " ";
            curr = curr->next;
        } while(curr->next != nullptr);
    }

    void sort()
    {
        bool sorted = false;
        while(!sorted)
        {
            sorted = true;
            iterator_ j = start;
            j++;
            for(iterator_ i = start; j != end; i++, j++)
            {
                if(i > j)
                {
                    swap(i, j);
                    sorted = false;
                }
            }
        }
    }
};

int main()
{
    List a;

    for(int i = 0; i < 15; i++)
    {
        a.add(rand() % 40);
    }
    for(iterator_ i = a.start; i != a.end; i++)
    {
        cout << *i << " ";
    }
    a.sort();
    cout << endl;
    for(iterator_ i = a.start; i != a.end; i++)
    {
        cout << *i << " ";
    }
    cout << endl;
    return 0;
}