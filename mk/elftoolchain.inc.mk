#
# Rules for handling include files.
#
# $Id$

.if !defined(TOP)
.error	Make variable \"TOP\" has not been defined.
.endif

.include "${TOP}/mk/elftoolchain.os.mk"

.include <bsd.own.mk>

.if ${OS_HOST} == "FreeBSD"
# Simulate <bsd.inc.mk>.
.PHONY:		incinstall
includes:	${INCS}	incinstall
.for inc in ${INCS}
incinstall::	${DESTDIR}${INCSDIR}/${inc}
.PRECIOUS:	${DESTDIR}${INCSDIR}/${inc}
${DESTDIR}${INCSDIR}/${inc}: ${inc}
	cmp -s $> $@ > /dev/null 2>&1 || \
		${INSTALL} -c -o ${BINOWN} -g ${BINGRP} -m ${NOBINMODE} $> $@
.endfor
.else
# Use the standard <bsd.inc.mk>.
.include <bsd.inc.mk>
.endif
