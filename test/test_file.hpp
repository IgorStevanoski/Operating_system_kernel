//
// Created by os on 9/4/22.
//

#ifndef PROJECT_BASE_TEST_FILE_HPP
#define PROJECT_BASE_TEST_FILE_HPP

#include "../h/syscall_c.hpp"

#include "../h/print.hpp"
#include "../h/syscall_cpp.hpp"

class WorkerA: public Thread {
    void testBodyA(void* arg);
public:
    WorkerA():Thread() {}

    void run() override {
        printString("WorkerBodyA");
        testBodyA(nullptr);
    }
};

class WorkerB: public Thread {
    void testBodyB(void* arg);
public:
    WorkerB():Thread() {}

    void run() override {
        printString("WorkerBodyA");
        testBodyB(nullptr);
    }
};

void WorkerA::testBodyA(void* arg) {
    for (uint64 i = 0; i < 10; i++) {
        printString("A: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
        }
    }
    printString("A finished!\n");
    //finishedA = true;
}

void WorkerB::testBodyB(void* arg) {
    for (uint64 i = 0; i < 16; i++) {
        printString("B: i="); printInteger(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
        }
    }
    printString("B finished!\n");
    //finishedB = true;
    thread_dispatch();
}

/*void userMainWrapper(void* arg){
    userMain();
}*/

#endif //PROJECT_BASE_TEST_FILE_HPP
