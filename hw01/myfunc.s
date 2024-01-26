	.cpu generic+fp+simd
	.file	"myfunc.c"
	.text
	.align	2
	.global	myfunc
	.type	myfunc, %function
// Add 7 to the argument
myfunc:
    // This function doesn't need to kill all the temps
    // but it does because that is totally legal according 
    // to the calling convetion 
    mov w1, 0xDEAD
    mov w2, 0xDEAD
    mov w3, 0xDEAD
    mov w4, 0xDEAD
    mov w5, 0xDEAD
    mov w6, 0xDEAD
    mov w7, 0xDEAD
    mov w8, 0xDEAD
    mov w9, 0xDEAD
    mov w10, 0xDEAD
    mov w11, 0xDEAD
    mov w12, 0xDEAD
    mov w13, 0xDEAD
    mov w14, 0xDEAD
    mov w15, 0xDEAD

	ldr	w1, [x0]
	add	w1, w1, 3
	str	w1, [x0]
	ret
.LFE0:
	.size	myfunc, .-myfunc
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",%progbits
