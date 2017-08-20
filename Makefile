default: clean compile

clean:
	@rm -rf *.o *~ *-w.h target

compile:
	@gcc -c lib1.c -o lib1.o
	@gcc -c lib2.c -o lib2.o
	@./genlibwrap.sh lib1 > lib1-w.h
	@./genlibwrap.sh lib2 > lib2-w.h
	@objcopy --prefix-symbols=lib1_ lib1.o
	@objcopy --prefix-symbols=lib2_ lib2.o
	@gcc -c main.c -o main.o
	@gcc main.o lib1.o lib2.o -o target
