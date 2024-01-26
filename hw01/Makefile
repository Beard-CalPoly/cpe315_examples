ALL= c_version assembly_version assembly_ohno
all: $(ALL)

c_version: main.c  myfunc.c  setval.c
	gcc -Wall -o $@ $^

assembly_version: main.c  myfunc.s  setval.s
	gcc -Wall -o $@ $^

assembly_ohno: main.c  myfunc.s  setval_broken.s
	gcc -Wall -o $@ $^
