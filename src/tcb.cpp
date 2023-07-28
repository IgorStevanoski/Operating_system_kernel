//
// Created by os on 8/15/22.
//

#include "../h/tcb.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"

TCB *TCB::running = nullptr;

uint64  TCB::timeSliceCounter = 0;

TCB* TCB::createThread(Body body, void* arg, uint64* stack){
    return new TCB(body, arg, stack, TIME_SLICE);
}

void TCB::yield()
{
    __asm__ volatile ("ecall");
};

void TCB::dispatch()
{
    TCB* old = running;
    if (!old->isFinished() && old->status != BLOCKED) { old->status = READY; Scheduler::put(old); }
    running = Scheduler::get();
    running->status = RUNNING;

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body(running->arg);
    //running->setFinished(true); //implicitno se zavrsava nit
    thread_exit();
}

void TCB::start()
{
    this->status = READY;
    Scheduler::put(this);
}
