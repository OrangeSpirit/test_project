CC= gcc -std=c11
GCC= g++ -std=c++17
DUMP= g++ -fdump-class-hierarchy
WWW= -Wall -Werror -Wextra
CMD= echo "pip to pip"

clean:
	clear
	rm -rf *.out

valgrind_a.out:
	valgrind --tool=memcheck --leak-check=yes	./a.out

test: clean
	$(CC) $(WWW) test.c
	./a.out

generate_table: clean
	$(CC) $(WWW) generate_table.c
	./a.out

var_2: clean
	$(CC) $(WWW) var_2.c
	./a.out

origin_test: clean
	$(CC) $(WWW) origin_test.c
	./a.out
