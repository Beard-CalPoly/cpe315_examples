.extern myfunc

fp .req x29
lr .req x30

.global setval
setval:
    // First parameter, limit_w19, pased in w0  
    limit_w19 .req w19
    stp fp, lr, [sp, -32]!
    add fp, sp, 0
    str x19, [sp,16] // save incoming value in x19
    
    mov limit_w19, w0
    // initialize val to 0 on the stack
    str wzr, [fp,24]
    
    // check to see if we should inter the loop
    cmp limit_w19, wzr
    ble .lnoloop
.lloop:
    // The address of val is the first parameter
    // addresses are 64-bit
    add x0, fp, 24
    // limit_w19 is the second parameter
    mov w1, limit_w19
    bl  myfunc
    // get any modified value of val
    ldr w0, [fp,24]
    // check the loop condition
    cmp w0, limit_w19
    blt .lloop
    b   .lexit
.lnoloop:
    mov x0, 0
.lexit:
    // restore any callee-saved registers
    // remember to restore all 64 bits
    ldr x19, [sp,16]
    ldp fp, lr, [sp], 32
    ret
