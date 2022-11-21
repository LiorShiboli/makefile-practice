CC=gcc
AR=ar
CLASS=numclass.h
OBJECTS_MAIN=main.o
BASIC=basicClassification.o
ADVLOOP=advancedClassificationLoop.o
LOOP= $(BASIC) $(ADVLOOP)
FLAGS= -Wall -g
all: libclassloops.a libclassloops.so
libclassloops.a:$(LOOP)
	$(AR) -rcs libclassloops.a $(LOOP)
libclassloops.so:$(LOOP)
	$(CC) -shared -o libclassloops.so $(LOOP)
basicClassification.o:basicClassification.c $(CLASS)
	$(CC) $(FLAGS) -c basicClassification.c
advancedClassificationLoop.o:advancedClassificationLoop.c $(CLASS)
	$(CC) $(FLAGS) -c advancedClassificationLoop.c
main.o: main.c $(CLASS)
	$(CC) $(FLAGS) -c main.c 
maindloop: $(OBJECTS_MAIN) libclassloops.so
	$(CC) $(FLAGS) -o maindloop $(OBJECTS_MAIN) libclassloops.so
.PHONY:clean all
clean:
	rm -f *.o *.a *.so maindloop