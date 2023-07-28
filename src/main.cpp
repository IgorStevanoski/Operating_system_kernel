#include "../h/tcb.hpp"
#include "../h/workers.hpp"
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../test/userMain.hpp"
#include "../h/syscall_c.hpp"

#include "../test/test_file.hpp"
#include "../h/syscall_cpp.hpp"

void userMainWrapper(void* arg){
    userMain();
}

int main ()
{
    //printString("Started \n");

    TCB *mainThread = TCB::createThread(nullptr, nullptr, nullptr);
    TCB::running = mainThread;

    Riscv::w_stvec( (uint64) &Riscv::supervisorTrap);   //adresa prekidne rutine
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE); // supervisor interrupt enable

    printString("Started \n");

    //TCB *userMainThread = TCB::createThread(userMain, nullptr, nullptr);
    thread_t userMainThread;
    thread_create(&userMainThread, userMainWrapper, nullptr);
    thread_start(userMainThread);


    while (!(userMainThread->isFinished() )) {
       TCB::yield();
    }

    delete userMainThread;
    delete mainThread;

    printString("Finished! \n" );

    return 0;
}