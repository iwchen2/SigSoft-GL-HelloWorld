CC = gcc
OBJ = main.o
DEPS = -framework OpenGL -framework GLUT

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

main: $(OBJ)
	gcc -o $@ $^ $(CFLAGS) $(DEPS)
