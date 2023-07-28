//
// Created by os on 8/15/22.
//

#ifndef PROJECT_BASE_TCB_HPP
#define PROJECT_BASE_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "riscv.hpp"
#include "print.hpp"

//#include "print.hpp"

//Thread Control Block
class TCB
{
public:

    enum Status {
        CREATED,
        READY,
        RUNNING,
        FINISHED,
        BLOCKED
    };

    ~TCB() { delete[] stack; }

    bool isFinished() const { return status == FINISHED; }

    void setFinished(bool finished) { if (finished) status = FINISHED; }

    void* getArg() { return arg; }

    uint64 getTimeSlice() const { return timeSlice; }

    using Body = void (*)(void*);

    static TCB *createThread(Body body, void* arg, uint64* stack);

    static void yield();

    void start();

    static TCB* running;

private:
    // treba promeniti STACK_SIZE i TIME_SLICE da budu one const iz hw.h
    TCB(Body body, void* arg, uint64* stack, uint64 timeSlice):
        body(body),
        stack( body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
        //stack( body != nullptr ? stack : nullptr),
        //stack(stack),
        arg(arg),
        context({
            (uint64) &threadWrapper,
            //stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
            this->stack != nullptr ? (uint64) &this->stack[DEFAULT_STACK_SIZE] : 0
        }),
        timeSlice(timeSlice),
        status(CREATED)
    {
        //if (body != nullptr) { start(); }
        if (body != nullptr) {}
        else { status = RUNNING; }
    }

    struct Context{
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64 *stack; //odavde pocinje stack, tu se cuvaju svi registri
    void* arg;
    Context context;
    uint64 timeSlice;
    //bool finished;
    Status status;

    friend class Riscv;
    friend class _sem;

    static void contextSwitch(Context *oldContext, Context *runningContext);
    static void dispatch();

    static uint64 timeSliceCounter;

    static void threadWrapper();

    static uint64 constexpr STACK_SIZE = 1024;
    static uint64 constexpr TIME_SLICE = 2;
};


#endif //PROJECT_BASE_TCB_HPP
