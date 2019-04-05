rm -f libsumm.a summ.o
gcc -c summ.c -o summ.o
ar rcs libsumm.a summ.o
rm -f summ.o
