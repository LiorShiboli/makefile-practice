CC=gcc
AR=ar
CLASS=numclass.h
OBJECTS_MAIN=main.o
BASIC=basicClassification.o
ADVLOOP=advancedClassificationLoop.o
LOOP= $(BASIC) $(ADVLOOP)
FLAGS= -Wall -g
all: libclassloops.a libclassloops.so
maindloop: $(OBJECTS_MAIN) libclassloops.so
	$(CC) $(FLAGS) -o maindloop $(OBJECTS_MAIN) ./libclassloops.so
main.o: main.c $(CLASS)
	$(CC) $(FLAGS) -c main.c $(CLASS)

libclassloops.a:$(LOOP)
	$(AR) -rcs libclassloops.a $(LOOP)
libclassloops.so:$(LOOP)
	$(CC) -shared -Wall -fPIC -o libclassloops.so $(LOOP)
basicClassification.o:basicClassification.c $(CLASS)
	$(CC) $(FLAGS) -c basicClassification.c 
advancedClassificationLoop.o:advancedClassificationLoop.c $(CLASS)
	$(CC) $(FLAGS) -c advancedClassificationLoop.c

.PHONY:clean all
clean:
	rm -f *.o *.a *.so maindloop