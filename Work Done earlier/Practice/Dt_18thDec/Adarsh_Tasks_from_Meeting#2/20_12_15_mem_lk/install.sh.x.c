#if 0
	shc Version 3.8.9b, Generic Script Compiler
	Copyright (c) 1994-2015 Francisco Rosales <frosal@fi.upm.es>

	/home/amagnum/A/BTP/tools/shc-3.8.9b/shc -f install.sh 
#endif

static  char data [] = 
#define      tst2_z	19
#define      tst2	((&data[1]))
	"\351\036\256\124\004\232\123\116\064\344\114\215\167\205\371\332"
	"\344\140\327\203\136\243\272"
#define      date_z	1
#define      date	((&data[23]))
	"\075"
#define      chk1_z	22
#define      chk1	((&data[26]))
	"\265\275\011\174\124\342\124\255\371\237\212\334\251\305\010\012"
	"\332\156\052\255\040\207\115\246\243\246"
#define      msg2_z	19
#define      msg2	((&data[53]))
	"\337\024\222\066\146\350\067\204\031\160\103\221\342\162\262\151"
	"\143\325\313\104\165\323\104\330"
#define      msg1_z	42
#define      msg1	((&data[76]))
	"\340\066\204\173\255\225\175\333\140\030\051\045\313\331\333\255"
	"\274\140\247\034\004\164\076\016\032\044\104\157\112\371\026\041"
	"\057\030\305\051\265\021\056\241\264\311\031\350\171\310\227\035"
#define      rlax_z	1
#define      rlax	((&data[122]))
	"\112"
#define      lsto_z	1
#define      lsto	((&data[123]))
	"\005"
#define      shll_z	8
#define      shll	((&data[126]))
	"\224\152\027\305\240\273\342\052\160\266\166\070"
#define      pswd_z	256
#define      pswd	((&data[144]))
	"\223\377\030\046\103\360\070\176\037\321\202\215\360\010\245\212"
	"\213\150\044\121\260\061\254\163\246\040\013\105\340\353\353\023"
	"\152\260\157\262\203\203\103\242\124\306\057\104\317\324\317\132"
	"\075\363\253\355\045\130\141\313\171\155\020\131\130\374\154\303"
	"\254\334\166\060\140\271\322\264\177\002\371\117\327\311\251\024"
	"\274\125\002\342\255\143\256\047\320\277\200\051\273\355\355\150"
	"\312\143\230\052\034\153\336\234\156\330\353\105\241\225\132\136"
	"\352\134\100\230\300\357\300\221\256\100\273\152\056\250\323\370"
	"\013\154\043\050\327\002\305\105\332\261\213\174\106\345\332\061"
	"\102\033\312\003\012\212\224\271\313\120\043\371\371\366\362\004"
	"\143\026\055\072\030\362\200\363\244\014\160\353\361\113\034\064"
	"\146\347\067\161\162\314\053\075\035\116\067\026\105\052\033\250"
	"\100\110\343\131\073\144\115\337\160\275\312\142\011\347\227\157"
	"\317\317\341\101\233\014\176\271\133\266\317\241\340\352\112\041"
	"\063\056\173\157\222\310\117\003\206\031\146\217\001\375\377\320"
	"\314\341\021\150\356\220\041\112\106\361\353\047\334\066\111\017"
	"\144\304\177\367\215\316\372\023"
#define      xecc_z	15
#define      xecc	((&data[400]))
	"\365\176\310\257\116\031\372\314\151\247\054\203\072\251\156\317"
	"\340"
#define      inlo_z	3
#define      inlo	((&data[417]))
	"\271\003\113"
#define      tst1_z	22
#define      tst1	((&data[424]))
	"\142\363\066\027\010\033\334\045\056\071\306\113\044\367\170\137"
	"\121\213\367\277\165\342\340\067\362\123\254\313\202\042\003"
#define      opts_z	1
#define      opts	((&data[451]))
	"\363"
#define      text_z	82
#define      text	((&data[457]))
	"\115\205\020\205\004\330\035\157\012\066\212\263\306\265\064\211"
	"\301\004\105\066\242\302\336\267\237\365\016\341\202\375\070\150"
	"\143\235\035\032\157\354\030\272\313\015\036\305\012\104\051\010"
	"\166\114\222\355\022\316\240\226\174\105\134\145\105\016\067\331"
	"\234\075\323\010\051\372\142\240\136\254\247\164\310\055\214\203"
	"\143\076\240\350\132\313\024\146\236"
#define      chk2_z	19
#define      chk2	((&data[542]))
	"\005\326\344\070\366\277\353\123\154\312\127\056\365\311\220\237"
	"\156\140\223\033\043\022"/* End of data[] */;
#define      hide_z	4096
#define DEBUGEXEC	0	/* Define as 1 to debug execvp calls */
#define TRACEABLE	0	/* Define as 1 to enable ptrace the executable */

/* rtc.c */

#include <sys/stat.h>
#include <sys/types.h>

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>

/* 'Alleged RC4' */

static unsigned char stte[256], indx, jndx, kndx;

/*
 * Reset arc4 stte. 
 */
void stte_0(void)
{
	indx = jndx = kndx = 0;
	do {
		stte[indx] = indx;
	} while (++indx);
}

/*
 * Set key. Can be used more than once. 
 */
void key(void * str, int len)
{
	unsigned char tmp, * ptr = (unsigned char *)str;
	while (len > 0) {
		do {
			tmp = stte[indx];
			kndx += tmp;
			kndx += ptr[(int)indx % len];
			stte[indx] = stte[kndx];
			stte[kndx] = tmp;
		} while (++indx);
		ptr += 256;
		len -= 256;
	}
}

/*
 * Crypt data. 
 */
void arc4(void * str, int len)
{
	unsigned char tmp, * ptr = (unsigned char *)str;
	while (len > 0) {
		indx++;
		tmp = stte[indx];
		jndx += tmp;
		stte[indx] = stte[jndx];
		stte[jndx] = tmp;
		tmp += stte[indx];
		*ptr ^= stte[tmp];
		ptr++;
		len--;
	}
}

/* End of ARC4 */

/*
 * Key with file invariants. 
 */
int key_with_file(char * file)
{
	struct stat statf[1];
	struct stat control[1];

	if (stat(file, statf) < 0)
		return -1;

	/* Turn on stable fields */
	memset(control, 0, sizeof(control));
	control->st_ino = statf->st_ino;
	control->st_dev = statf->st_dev;
	control->st_rdev = statf->st_rdev;
	control->st_uid = statf->st_uid;
	control->st_gid = statf->st_gid;
	control->st_size = statf->st_size;
	control->st_mtime = statf->st_mtime;
	control->st_ctime = statf->st_ctime;
	key(control, sizeof(control));
	return 0;
}

#if DEBUGEXEC
void debugexec(char * sh11, int argc, char ** argv)
{
	int i;
	fprintf(stderr, "shll=%s\n", sh11 ? sh11 : "<null>");
	fprintf(stderr, "argc=%d\n", argc);
	if (!argv) {
		fprintf(stderr, "argv=<null>\n");
	} else { 
		for (i = 0; i <= argc ; i++)
			fprintf(stderr, "argv[%d]=%.60s\n", i, argv[i] ? argv[i] : "<null>");
	}
}
#endif /* DEBUGEXEC */

void rmarg(char ** argv, char * arg)
{
	for (; argv && *argv && *argv != arg; argv++);
	for (; argv && *argv; argv++)
		*argv = argv[1];
}

int chkenv(int argc)
{
	char buff[512];
	unsigned long mask, m;
	int l, a, c;
	char * string;
	extern char ** environ;

	mask  = (unsigned long)&chkenv;
	mask ^= (unsigned long)getpid() * ~mask;
	sprintf(buff, "x%lx", mask);
	string = getenv(buff);
#if DEBUGEXEC
	fprintf(stderr, "getenv(%s)=%s\n", buff, string ? string : "<null>");
#endif
	l = strlen(buff);
	if (!string) {
		/* 1st */
		sprintf(&buff[l], "=%lu %d", mask, argc);
		putenv(strdup(buff));
		return 0;
	}
	c = sscanf(string, "%lu %d%c", &m, &a, buff);
	if (c == 2 && m == mask) {
		/* 3rd */
		rmarg(environ, &string[-l - 1]);
		return 1 + (argc - a);
	}
	return -1;
}

#if !TRACEABLE

#define _LINUX_SOURCE_COMPAT
#include <sys/ptrace.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <fcntl.h>
#include <signal.h>
#include <stdio.h>
#include <unistd.h>

#if !defined(PTRACE_ATTACH) && defined(PT_ATTACH)
#	define PTRACE_ATTACH	PT_ATTACH
#endif
void untraceable(char * argv0)
{
	char proc[80];
	int pid, mine;

	switch(pid = fork()) {
	case  0:
		pid = getppid();
		/* For problematic SunOS ptrace */
#if defined(__FreeBSD__)
		sprintf(proc, "/proc/%d/mem", (int)pid);
#else
		sprintf(proc, "/proc/%d/as",  (int)pid);
#endif
		close(0);
		mine = !open(proc, O_RDWR|O_EXCL);
		if (!mine && errno != EBUSY)
			mine = !ptrace(PTRACE_ATTACH, pid, 0, 0);
		if (mine) {
			kill(pid, SIGCONT);
		} else {
			perror(argv0);
			kill(pid, SIGKILL);
		}
		_exit(mine);
	case -1:
		break;
	default:
		if (pid == waitpid(pid, 0, 0))
			return;
	}
	perror(argv0);
	_exit(1);
}
#endif /* !TRACEABLE */

char * xsh(int argc, char ** argv)
{
	char * scrpt;
	int ret, i, j;
	char ** varg;
	char * me = argv[0];

	stte_0();
	 key(pswd, pswd_z);
	arc4(msg1, msg1_z);
	arc4(date, date_z);
	if (date[0] && (atoll(date)<time(NULL)))
		return msg1;
	arc4(shll, shll_z);
	arc4(inlo, inlo_z);
	arc4(xecc, xecc_z);
	arc4(lsto, lsto_z);
	arc4(tst1, tst1_z);
	 key(tst1, tst1_z);
	arc4(chk1, chk1_z);
	if ((chk1_z != tst1_z) || memcmp(tst1, chk1, tst1_z))
		return tst1;
	ret = chkenv(argc);
	arc4(msg2, msg2_z);
	if (ret < 0)
		return msg2;
	varg = (char **)calloc(argc + 10, sizeof(char *));
	if (!varg)
		return 0;
	if (ret) {
		arc4(rlax, rlax_z);
		if (!rlax[0] && key_with_file(shll))
			return shll;
		arc4(opts, opts_z);
		arc4(text, text_z);
		arc4(tst2, tst2_z);
		 key(tst2, tst2_z);
		arc4(chk2, chk2_z);
		if ((chk2_z != tst2_z) || memcmp(tst2, chk2, tst2_z))
			return tst2;
		/* Prepend hide_z spaces to script text to hide it. */
		scrpt = malloc(hide_z + text_z);
		if (!scrpt)
			return 0;
		memset(scrpt, (int) ' ', hide_z);
		memcpy(&scrpt[hide_z], text, text_z);
	} else {			/* Reexecute */
		if (*xecc) {
			scrpt = malloc(512);
			if (!scrpt)
				return 0;
			sprintf(scrpt, xecc, me);
		} else {
			scrpt = me;
		}
	}
	j = 0;
	varg[j++] = argv[0];		/* My own name at execution */
	if (ret && *opts)
		varg[j++] = opts;	/* Options on 1st line of code */
	if (*inlo)
		varg[j++] = inlo;	/* Option introducing inline code */
	varg[j++] = scrpt;		/* The script itself */
	if (*lsto)
		varg[j++] = lsto;	/* Option meaning last option */
	i = (ret > 1) ? ret : 0;	/* Args numbering correction */
	while (i < argc)
		varg[j++] = argv[i++];	/* Main run-time arguments */
	varg[j] = 0;			/* NULL terminated array */
#if DEBUGEXEC
	debugexec(shll, j, varg);
#endif
	execvp(shll, varg);
	return shll;
}

int main(int argc, char ** argv)
{
#if DEBUGEXEC
	debugexec("main", argc, argv);
#endif
#if !TRACEABLE
	untraceable(argv[0]);
#endif
	argv[1] = xsh(argc, argv);
	fprintf(stderr, "%s%s%s: %s\n", argv[0],
		errno ? ": " : "",
		errno ? strerror(errno) : "",
		argv[1] ? argv[1] : "<null>"
	);
	return 1;
}
