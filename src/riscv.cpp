//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"
#include "../h/syscall_c.hpp"

void Riscv::popSppSpie()
{
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void Riscv::handleSupervisorTrap()
{
    uint64 args [5];
    __asm__ volatile ("mv %0, a0" : "=r" (args[0]));
    __asm__ volatile ("mv %0, a1" : "=r" (args[1]));
    __asm__ volatile ("mv %0, a2" : "=r" (args[2]));
    __asm__ volatile ("mv %0, a3" : "=r" (args[3]));
    __asm__ volatile ("mv %0, a4" : "=r" (args[4]));


    uint64 scause = r_scause();
    if (scause == 0x0000000000000009UL || scause == 0x0000000000000008UL) {
        //interrupt: NO, cause code: environment call from S-mode (9)
        uint64 sepc = r_sepc() + 4; // + 4 zato sto prilikom ecall instrukcije pc se ne stavlja na prvu narednu
        uint64 sstatus = r_sstatus();

        uint64 num = args[0];
        uint64 shouldDispatch = 1;

        if (num == 0x01)    //mem_alloc
        {

        }
        else if (num == 0x02)   //mem_free
        {

        }
        else if (num == 0x11)    //thread_create
        {
            thread_t* handle = (thread_t*) args[1];
            TCB::Body start_routine = (TCB::Body) args[2];
            void* arg = (void*) args[3];
            uint64* stack = (uint64*) args[4];

            *handle = TCB::createThread(start_routine, arg, stack);

            if ((uint64)handle > 0) {
                __asm__ volatile ("mv a0, %0" : : "r" (0));
            } else {
                __asm__ volatile ("mv a0, %0" : : "r" (1));
            }
        }
        else if (num == 0x12) //thread_exit
        {
            TCB::running->setFinished(true);
            //__asm__ volatile ("mv a0, %0" : : "r" (0));
        }
        else if (num == 0x13) //thread_dispatch
        {
            //dispatch automatically
        }
        else if (num == 0x14) //thread_start
        {
            thread_t handle = (thread_t) args[1];
            handle->start();
            __asm__ volatile ("mv a0, %0" : : "r" (0));
        }
        else if (num == 0x21) //sem_open
        {
            sem_t* handle = (sem_t*) args[1];
            unsigned init = (unsigned) args[2];

            *handle = _sem::createSem( init );
        }
        else if (num == 0x22) //sem_close
        {
           // close semaphore
        }
        else if (num == 0x23) //sem_wait
        {
            sem_t sem = (sem_t) args[1];

            int ret = sem->wait();
            __asm__ volatile ("mv a0, %0" : : "r" (ret));

            shouldDispatch = 0;
        }
        else if (num == 0x24) //sem_signal
        {
            sem_t sem = (sem_t) args[1];

            int ret = sem->signal();
            __asm__ volatile ("mv a0, %0" : : "r" (ret));

            shouldDispatch = 0;
        }
        else if (num == 0x42) //putc
        {
            /*char chr = (char) args[1];
            __putc(chr);
*/
            shouldDispatch = 0;
        }
        else if (num == 0x41) //getc
        {
/*            uint64 volatile c = (uint64)__getc();
            __asm__ volatile ("mv a0, %0" : : "r" (c));
*/
            //shouldDispatch = 0;
        }

        if ( shouldDispatch == 1) {
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
        }
        // w_sstatus i w_sepc nece raditi novokreirana nit, zato o tome treba voditi racuna u threadWrapperu
        w_sstatus(sstatus);
        w_sepc(sepc);
    } else if (scause == 0x8000000000000001UL) {
        //interrupt: yes, cause code: supervisor software interrupt (timer)
        TCB::timeSliceCounter++;
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
            uint64 volatile sepc = r_sepc();
            uint64 volatile sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            // w_sstatus i w_sepc nece raditi novokreirana nit, zato o tome treba voditi racuna u threadWrapperu
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP );
    } else if (scause == 0x8000000000000009UL){
        //interrupt: yes, cause code: supervisor external interrupt (timer)
        console_handler();
    } else {
        // unexpected trap cause

        // print(scause)
        // print(sepc)
        // print(stval)
    }
}