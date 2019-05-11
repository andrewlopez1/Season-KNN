CC=gcc
CFLAGS=-fopenmp
LIBS=-lm
DEPS=utility.h structs.h KnnSequential.h KnnParallel.h

main: predict-seasons.c $(DEPS)
	$(CC) $(CFLAGS) predict-seasons.c -o main $(LIBS)

clean:
	rm main
