CC = $(CROSS_COMPILE)gcc

#CFLAGS ?= -O2 -Wall

all: helloworld

helloworld: helloworld.c
	$(CC) $^ -o $@

install: helloworld
	install -d $(DESTDIR)/bin
	install -m 755 $^ $(DESTDIR)/bin

clean:
	rm -f helloworld
