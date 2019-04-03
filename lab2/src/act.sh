gcc $(pwd)/revert_string/main.o -L$(pwd)/revert_string/static -lrevert_string -o $(pwd)/revert_string/rstatic
LD_LIBRARY_PATH=$(pwd)/revert_string/dinamic
gcc -c $(pwd)/revert_string/main.c -o $(pwd)/revert_string/main.o
gcc $(pwd)/revert_string/main.o -L$(pwd)/revert_string/dinamic -lrevert_string -o $(pwd)/revert_string/rdinamic 
cp $(pwd)/tests/tests.c $(pwd)/revert_string/tests.c
gcc -c $(pwd)/revert_string/tests.c -o $(pwd)/revert_string/tests.o
gcc $(pwd)/revert_string/tests.o -L$(pwd)/revert_string/dinamic -lrevert_string -o $(pwd)/revert_string/rtests -lcunit

