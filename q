#include <bits/stdc++.h>
using namespace std;

class Queue {
public:
    int *arr; 
    int size; 
    int front; 
    int rear;  


    Queue(int size) {
        this->size = size; 
        arr = new int[size];
        front = 0;
        rear = 0;
    }


    void push(int data) {
        if (rear == size) {
            cout << "Queue is full" << endl;
        } else {
            arr[rear] = data;
            rear++;
        }
    }

    void pop() {
        if (front == rear) {
            cout << "Queue is empty" << endl;
        } else {
            arr[front] = -1; 
            front++;
        }
    }

    void getFront() {
        if (front == rear) {
            cout << "Queue is empty" << endl;
        } else {
            cout << arr[front] << endl;
        }
    }

    void getSize() {
        if (front == rear) {
            cout << "Queue is empty" << endl;
        } else {
            cout << (rear - front) << endl;
        }
    }

    void isEmpty() {
        if (front == rear) {
            cout << "Queue is empty" << endl;
        } else {
            cout << "Queue is not empty" << endl;
        }
    }
};

int main() {
    Queue q(10);

    q.push(1);
    q.push(2);
    q.push(3);
    q.push(4);
    q.push(5);

    q.pop();
    q.pop();

    q.getFront();
    q.getSize();
    q.isEmpty();

    return 0;
}
