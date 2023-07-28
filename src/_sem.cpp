//
// Created by os on 1/28/23.
//

#include "../h/_sem.hpp"

_sem* _sem::createSem(int val)
{
    return new _sem(val);
}

int _sem::wait()
{
    val--;
    if (val < 0) {
        TCB* old = TCB::running;
        old->status = TCB::BLOCKED;
        queue.addLast(old);
        TCB::dispatch();
        /*TCB::running = Scheduler::get();
        TCB::running->status = TCB::RUNNING;
        TCB::contextSwitch(&old->context, &TCB::running->context);*/
    }
    return 0;
}

int _sem::signal()
{
    val++;
    if (val <= 0) {
        TCB* curr = queue.removeFirst();
        curr->status = TCB::READY;
        Scheduler::put(curr);
    }
    return 0;
}