.extern myfunc

fp .req x29
lr .req x30

.global setval
setval:
    // First parameter, limit, pased in w0  
    limit .req w8 // This breaks things! Why? 
    stp fp, lr, [sp, -32]!
    add fp, sp, 0
    mov limit, w0
    
    // initialize val to 0 on the stack
    str wzr, [fp,24]
    
    // check to see if we should inter the loop
    cmp limit, wzr
    ble .lnoloop
.lloop:
    // The address of val is the first parameter
    // addresses are 64-bit
    add x0, fp, 24
    // limit is the second parameter
    mov w1, limit
    bl  myfunc
    // get any modified value of val
    ldr w0, [fp,24]
    // check the loop condition
    cmp w0, limit
    blt .lloop
    b   .lexit
.lnoloop:
    mov x0, 0
.lexit:
    // restore any callee-saved registers
    // remember to restore all 64 bits
    ldp fp, lr, [sp], 32 
    ret
