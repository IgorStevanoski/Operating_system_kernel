//
// Created by os on 1/28/23.
//

#ifndef PROJECT_BASE__SEM_HPP
#define PROJECT_BASE__SEM_HPP


#include "list.hpp"
#include "tcb.hpp"

class _sem {
public:

    ~_sem() {}

    static _sem* createSem(int val);

    int wait();

    int signal();

private:

    _sem(int val): val(val){}

    List<TCB> queue;
    int val;

};


#endif //PROJECT_BASE__SEM_HPP
