# $Id$

TOP=	..

PROG=	ar
SRCS=	ar.c read.c util.c write.c
LSRC=	acplex.l
YSRC=	acpyacc.y

WARNS?=	5

DPADD=	${LIBARCHIVE} ${LIBELFTC} ${LIBELF}
LDADD=	-larchive -lelftc -lelf

CFLAGS+=-I. -I${.CURDIR}

LINKS=	${BINDIR}/ar ${BINDIR}/ranlib

CLEANFILES+= ranlib

MAN=	ar.1 ar.5
MLINKS= ar.1 ranlib.1

.include "${TOP}/mk/elftoolchain.prog.mk"
