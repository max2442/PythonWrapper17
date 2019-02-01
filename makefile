CC = gcc

default: libants.a

libexamples.a: ants.o
	ar rcs $@ $^
    
ants.o: ants.c ants-api.h
	$(CC) -c $<

clean:
	rm *.o *.a
