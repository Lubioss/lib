all: libprocesshider.so libprocesshider2.so

libprocesshider.so: processhider.c
	gcc -Wall -fPIC -shared -o libprocesshider.so processhider.c -ldl

libprocesshider2.so: processhider2.c
	gcc -Wall -fPIC -shared -o libprocesshider2.so processhider2.c -ldl

.PHONY clean:
	rm -f libprocesshider.so libprocesshider2.so
