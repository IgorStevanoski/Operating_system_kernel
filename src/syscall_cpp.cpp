//
// Created by os on 9/7/22.
//

#include "../h/syscall_cpp.hpp"
#include "../h/syscall_c.hpp"

// Thread
Thread::Thread (void (*body) (void*), void* arg)
{
    thread_create( &myHandle, body, arg);
}

Thread::~Thread() {
    thread_exit();
    delete myHandle;
}

int Thread::start() {
    thread_start(myHandle);
    return 0;
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t) {
    return 0;
}

Thread::Thread() {
    thread_create( &myHandle, Thread::runWrapper, this);
}

void Thread::runWrapper(void *arg)
{
    //void* curr = TCB::running->getArg();
    ((Thread*)arg)->run();
    //((Thread*)arg)->run();
}

// Semaphore

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

//Console

char Console::getc() {
    return ::getc();
}

void Console::putc(char chr) {
    ::putc(chr);
}
