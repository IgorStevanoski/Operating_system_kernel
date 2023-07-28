//
// Created by os on 9/1/22.
//

#include "../h/syscall_c.hpp"
#include "../lib/mem.h"

void environmentCallFunction()
{
    __asm__ volatile ("ecall");
}

void* mem_alloc (size_t size)
{
    if (size <= 0) return nullptr;

    return __mem_alloc(size);
}

int mem_free (void* v)
{
    return __mem_free(v);
}

int thread_create (thread_t* handle, void (*start_routine) (void*), void* arg)
{
    if ( !handle || !start_routine) return -1; // error
    //if ( !arg ) return -1;

    uint64 volatile num = 0x11;                                             //a0
    uint64 volatile handleReg = (uint64) handle;                            //a1
    uint64 volatile start_routineReg = (uint64) start_routine;              //a2
    uint64 volatile argReg = (uint64) arg;                                  //a3
    uint64 volatile stack_spaceReg = (uint64) mem_alloc(sizeof(uint64) * DEFAULT_STACK_SIZE);    //a4

    __asm__ volatile ("mv a0, %0" : : "r" (num));
    __asm__ volatile ("mv a1, %0" : : "r" (handleReg));
    __asm__ volatile ("mv a2, %0" : : "r" (start_routineReg));
    __asm__ volatile ("mv a3, %0" : : "r" (argReg));
    __asm__ volatile ("mv a4, %0" : : "r" (stack_spaceReg));

    environmentCallFunction();

    uint64 volatile ret = 0;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));

    if ( ret == 0) return 0;
    return -1;
}

int thread_start (thread_t handle)
{
    if ( !handle ) return -1; // error
    //if ( !arg ) return -1;

    uint64 volatile num = 0x14;                                             //a0
    uint64 volatile handleReg = (uint64) handle;                            //a1

    __asm__ volatile ("mv a0, %0" : : "r" (num));
    __asm__ volatile ("mv a1, %0" : : "r" (handleReg));

    environmentCallFunction();

    uint64 volatile ret = 0;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));

    if ( ret == 0) return 0;
    return -1;
}

int thread_exit ()
{
    uint64 volatile num = 0x12;

    __asm__ volatile ("mv a0, %0" : : [stvec] "r" (num));

    environmentCallFunction();

    /*uint64 volatile ret = 0;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));*/

    return 0;
}

void thread_dispatch ()
{
    uint64 volatile num = 0x13;

    __asm__ volatile ("mv a0, %0" : : [stvec] "r" (num));

    environmentCallFunction();

}

// Semaphore
int sem_open ( sem_t* handle, unsigned init) //0x21
{
    if ( !handle ) return -1; // error

    uint64 volatile num = 0x21;                                             //a0
    uint64 volatile handleReg = (uint64) handle;                            //a1
    uint64 volatile initReg = (uint64) init;                                //a2

    __asm__ volatile ("mv a0, %0" : : "r" (num));
    __asm__ volatile ("mv a1, %0" : : "r" (handleReg));
    __asm__ volatile ("mv a2, %0" : : "r" (initReg));

    environmentCallFunction();

    return 0;
}

int sem_close (sem_t handle) //0x22
{
    uint64 volatile num = 0x22;                                             //a0
    uint64 volatile handleReg = (uint64) handle;                            //a1

    __asm__ volatile ("mv a0, %0" : : "r" (num));
    __asm__ volatile ("mv a1, %0" : : "r" (handleReg));

    environmentCallFunction();

    return 0;
}

int sem_wait (sem_t id) // 0x23
{
    uint64 volatile num = 0x23;                                             //a0
    uint64 volatile handleReg = (uint64) id;                                //a1

    __asm__ volatile ("mv a0, %0" : : "r" (num));
    __asm__ volatile ("mv a1, %0" : : "r" (handleReg));

    environmentCallFunction();

    uint64 volatile ret = 0;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));

    return ret;
}

int sem_signal (sem_t id) // 0x24
{
    uint64 volatile num = 0x24;                                             //a0
    uint64 volatile handleReg = (uint64) id;                                //a1

    __asm__ volatile ("mv a0, %0" : : "r" (num));
    __asm__ volatile ("mv a1, %0" : : "r" (handleReg));

    environmentCallFunction();

    uint64 volatile ret = 0;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));

    return ret;
}

// Console
char getc() //0x41
{
    /*uint64 volatile num = 0x41;                                             //a0

    __asm__ volatile ("mv a0, %0" : : "r" (num));

    environmentCallFunction();

    uint64 ret = 0;
    __asm__ volatile ("mv %0, a0" : "=r" (ret));
    return (char)ret;*/

    //environmentCallFunction();

    return __getc();
}

void putc(char chr) //0x42
{
    /*uint64 volatile num = 0x42;                                             //a0
    //uint64 volatile chrReg = (uint64) chr;                                  //a1

    __asm__ volatile ("mv a0, %0" : : "r" (num));
    //__asm__ volatile ("mv a1, %0" : : "r" (chrReg));

    environmentCallFunction();*/

    __putc(chr);
}
