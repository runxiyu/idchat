# Customize to fit your system
VERSION = 1.7

# paths
PREFIX      = /usr/local
BINDIR      = ${PREFIX}/bin
MANDIR      = ${PREFIX}/share/man
MAN1DIR     = ${MANDIR}/man1
DOCDIR      = ${PREFIX}/share/doc/ii

# Set the following to install to a different root
DESTDIR     =

INCDIR      = ${PREFIX}/include
LIBDIR      = ${PREFIX}/lib

# includes and libs
INCLUDES    = -I. -I${INCDIR} -I/usr/include
LIBS        = -L${LIBDIR} -L/usr/lib -lc

# compiler
CC          = cc

# debug
#CFLAGS      = -g -O0 -pedantic -Wall ${INCLUDES} -DVERSION=\"${VERSION}\" -std=c99 -D_DEFAULT_SOURCE
#LDFLAGS     = ${LIBS}

# release
CFLAGS     = -Os ${INCLUDES} -DVERSION=\"${VERSION}\" -std=c99 -D_DEFAULT_SOURCE
LDFLAGS    = -s
