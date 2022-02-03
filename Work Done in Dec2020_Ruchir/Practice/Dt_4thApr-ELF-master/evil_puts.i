# 1 "evil_puts.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "evil_puts.c"
# 1 "/usr/include/x86_64-linux-gnu/sys/syscall.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/sys/syscall.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/unistd.h" 1 3 4
# 13 "/usr/include/x86_64-linux-gnu/asm/unistd.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/unistd_64.h" 1 3 4
# 14 "/usr/include/x86_64-linux-gnu/asm/unistd.h" 2 3 4
# 25 "/usr/include/x86_64-linux-gnu/sys/syscall.h" 2 3 4






# 1 "/usr/include/x86_64-linux-gnu/bits/syscall.h" 1 3 4
# 32 "/usr/include/x86_64-linux-gnu/sys/syscall.h" 2 3 4
# 2 "evil_puts.c" 2
int _write (int fd, void *buf, int count)
{
long ret;
__asm__ __volatile__ ("pushl %%ebx\n\t"
"movl %%esi,%%ebx\n\t"
"int $0x80\n\t""popl %%ebx":"=a" (ret)
:"0" (
# 8 "evil_puts.c" 3 4
     1
# 8 "evil_puts.c"
              ), "S" ((long) fd),
"c" ((long) buf), "d" ((long) count));
if (ret >= 0) {
return (int) ret;
}
return -1;
}
int evil_puts(void)
{
_write(1, "HAHA puts() has been hijacked!\n", 31);
}
