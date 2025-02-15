rm shell
rm shell.o
rm out.a

gcc -c -Os -fno-ident -fno-asynchronous-unwind-tables -fno-stack-protector -fomit-frame-pointer -o shell.o shell.c
as sys.S
ld -o shell shell.o a.out  --entry main -z noexecstack
