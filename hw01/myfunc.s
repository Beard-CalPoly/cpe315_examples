	.cpu generic+fp+simd
	.file	"myfunc.c"
	.text
	.align	2
	.global	myfunc
	.type	myfunc, %function
myfunc:
.LFB0:
	.cfi_startproc
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
	add	w1, w1, 7
	str	w1, [x0]
	ret
	.cfi_endproc
.LFE0:
	.size	myfunc, .-myfunc
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",%progbits
