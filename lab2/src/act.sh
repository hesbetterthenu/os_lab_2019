gcc $(pwd)/swap/main.c $(pwd)/swap/swap.c -o $(pwd)/swap/num1
mkdir revert_string/static
mkdir revert_string/dinamic
gcc -c $(pwd)/revert_string/main.c -o $(pwd)/revert_string/main.o
gcc -c $(pwd)/revert_string/revert_string.c -o $(pwd)/revert_string/static/revert_string.o
ar rcs $(pwd)/revert_string/static/librevert_string.a $(pwd)/revert_string/static/revert_string.o
gcc $(pwd)/revert_string/main.o -L$(pwd)/revert_string/static -lrevert_string -o $(pwd)/revert_string/rstatic
gcc -c -fPIC $(pwd)/revert_string/revert_string.c -o $(pwd)/revert_string/dinamic/revert_string.o
gcc -shared $(pwd)/revert_string/dinamic/revert_string.o -o $(pwd)/revert_string/dinamic/librevert_string.so
LD_LIBRARY_PATH=$(pwd)/revert_string/dinamic
gcc $(pwd)/revert_string/main.o -L$(pwd)/revert_string/dinamic -lrevert_string -o $(pwd)/revert_string/rdinamic 
cp $(pwd)/tests/tests.c $(pwd)/revert_string/tests.c
gcc -c $(pwd)/revert_string/tests.c -o $(pwd)/revert_string/tests.o
gcc $(pwd)/revert_string/tests.o -L$(pwd)/revert_string/dinamic -lrevert_string -o $(pwd)/revert_string/rtests -lcunit

