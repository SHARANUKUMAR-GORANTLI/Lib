CC=gcc
SRC=main.c book_bdb.c myutil.c
EXE=book
build:
	$(CC) -g $(SRC) -o $(EXE)     # gcc -g main.c book_bdb.c myutil.c -o         book(buildname)
run:                                  #make run     //phony targets
	./$(EXE)                          #./book                      
clean:
	rm -f *.o *.s *.i $(EXE)     #rm -f *.o *.s *.i book
lint:
	splint $(SRC)                #splint main.c book_bdb.c myutil.c
check:                           #make check
	valgrind --leak-check=yes ./$(EXE)           #valgrind --leak-check=yes ./book
execute: clean build run         #make execute     
memcheck: clean build check      #make memcheck
