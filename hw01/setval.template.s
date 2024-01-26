.extern myfunc

fp .req x29
lr .req x30
.equ setval_stack_size, 16

.global setval
setval:
    stp fp, lr, [sp, -SETVAL_STACK_SIZE]!
    add fp, sp, 0

    ldp fp, lr, [sp], SETVAL_STACK_SIZE
    ret
