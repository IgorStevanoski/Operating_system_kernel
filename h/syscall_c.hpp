//
// Created by os on 9/1/22.
//

#ifndef PROJECT_BASE_SYSCALL_C_HPP
#define PROJECT_BASE_SYSCALL_C_HPP

#include "../lib/hw.h"
#include "../lib/console.h"
#include "tcb.hpp"
#include "_sem.hpp"

// Memory_allocation
void* mem_alloc (size_t size); //0x01

int mem_free (void*); //0x02

// Thread
class TCB;
typedef TCB* thread_t;

int thread_create (thread_t* handle, void (*start_routine) (void*), void* arg); //0x11

int thread_exit (); //0x12

void thread_dispatch (); //0x13

int thread_start (thread_t handle); //0x14

// Semaphore
class _sem;
typedef _sem* sem_t;

int sem_open ( sem_t* handle, unsigned init); //0x21

int sem_close (sem_t handle); //0x22

int sem_wait (sem_t id); // 0x23

int sem_signal (sem_t id); // 0x24

// Time
typedef unsigned long time_t;

int time_sleep (time_t); //0x31

// Console
const int EOF = -1;

char getc (); //0x41

void putc (char chr); //0x42

// Util
void environmentCallFunction();

#endif //PROJECT_BASE_SYSCALL_C_HPP
