all: libinterposed.so

libinterposed.so: libinterposed.c
	gcc $(INTERPOSED_CFLAGS) $(CFLAGS) -fPIC -shared -o $@ $^

.PHONY: all
