# Operating system kernel
This project represents an operating system kernel which supports threads, semaphores, synchronous and asynchronous context switching and preemption on interrupt from timer or keyboard.  
Project consists of multiple layers: Kernel, ABI, C API and C++ OO API.  
  
Kernel (C, Assembly) is executed in privileged mode, unable for users to directly interact with, but may use its 
funcionalities through system calls (ABI layer - C, Assembly). C API wraps ABI, enabling usage of system calls in 
C programs, while C++ OO API wraps C API, doing same for C++ programs.  
  
Threads are supported through class TCB(thread control block) in C API. Each TCB contains its body (method it will execute when running) arguments, stack and context (needed when switching context), time slice and status.
Threads in C++ API are presented by class Thread, which wraps TCB functionalities. 
  
Semaphores are supported through class _sem in C API and class Semaphore in C++ API.  
  
Synchronous context switching is provided through specific system call, while asynchronous context switching is 
evoked through timer or keyboard interrupt.   
  
Interrupt routine is typed in ricv.cpp file, which functionalities are used by system calls in syscall_c.cpp file. System calls sets up arguments through registers and calls enviroment call which calls interrupt routine. Interrupt routine is run in privileged mode.  

Main kernel thread is created in main.cpp which creates an user thread that runs userMain() and waits for it to finish.
userMain() calls one of few tests, in this case producerConsumer_CPP_Sync_API() which creates several producer and consumer threads and waits for them to finish.
Producer produce numbers given through keyboard input, which consumers need to consume, after which the processing is over and user thread can finish.

