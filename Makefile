CC = cc

# includes and flags
CFLAGS = -O3 -ffast-math -Wall -Wextra
LIBS = -lXft -lX11 -lXcursor -lXft -lfontconfig -lXcomposite
FREETYPEINC = /usr/include/freetype2
INCS = -I${FREETYPEINC}

SRC = saturn.c
OBJ = ${SRC:.c=.o}

all: Saturn print_options 

print_options:
	@echo Saturn build options:
	@echo "CFLAGS = ${CFLAGS}"
	@echo "LIBS   = ${LIBS}"
	@echo "INCS   = ${INCS}"
	@echo "CC     = ${CC}"

.c.o:
	${CC} -c ${CFLAGS} ${LIBS} ${INCS} $<

${OBJ}: config.h

Saturn: ${OBJ}
	${CC} -o $@ ${OBJ} ${LIBS} ${INCS}

install:
	cp -f Saturn /usr/bin
	cp -f saturn.desktop /usr/share/applications
	cp -f saturnstart /usr/bin
	chmod 755 /usr/bin/Saturn

clean:
	rm -f Saturn ${OBJ}

uninstall:
	rm -f /usr/bin/Saturn
	rm -f /usr/share/applications/Saturn.desktop

.PHONY: all print_options clean install uninstall freetype
