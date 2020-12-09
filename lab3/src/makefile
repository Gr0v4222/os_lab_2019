CC=gcc
CFLAGS=-I.

all : sequential_min_max parallel_min_max second_sequential

sequential_min_max : utils.o find_min_max.o utils.h find_min_max.h
	$(CC) -o sequential_min_max find_min_max.o utils.o sequential_min_max.c $(CFLAGS)

second_sequential: second_sequential.o
	$(CC) -o second_sequential second_sequential.o $(CFLAGS)

parallel_min_max : utils.o find_min_max.o utils.h find_min_max.h
	$(CC) -o parallel_min_max utils.o find_min_max.o parallel_min_max.c $(CFLAGS)

utils.o : utils.h
	$(CC) -o utils.o -c utils.c $(CFLAGS)

find_min_max.o : utils.h find_min_max.h
	$(CC) -o find_min_max.o -c find_min_max.c $(CFLAGS)

second_sequential.o:
	$(CC) -o second_sequential.o -c second_sequential.c $(CFLAGS)

clean :
	rm *.o sequential_min_max parallel_min_max second_sequential
