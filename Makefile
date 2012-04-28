CC     ?= clang
CFLAGS += -Wall -pedantic -std=c99
OBJ     = main.o      \
          lex.o       \
          error.o     \
          parse.o     \
          typedef.o   \
          util.o      \
          code.o      \
          asm.o       \
          ast.o       \
          ir.o

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)

gmqcc: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)
	
clean:
	rm -f *.o gmqcc
