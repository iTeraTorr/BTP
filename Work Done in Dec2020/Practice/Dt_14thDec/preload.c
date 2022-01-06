int read(int fd, char *buf, int n)
{
    buf[0]='R';
    buf[1]='u';
    buf[2]='c';
    buf[3]='h';
    buf[4]='i';
    buf[5]='r';
    buf[6]='\n';
    return 7;
}