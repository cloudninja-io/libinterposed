include config.mk

all: libinterposed.so

libinterposed.so: libinterposed.c
	gcc $(INTERPOSED_CFLAGS) $(CFLAGS) -D_GNU_SOURCE -fPIC -shared -o $@ $^

.PHONY: all
