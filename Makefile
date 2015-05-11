# cs335 duckhunt
# to compile your project, type make and press enter

CFLAGS = -I ./include
LIB = ./libggfonts.so
LFLAGS = $(LIB) -lrt -lX11 -lGLU -lGL -pthread -lm #-lXrandr

all: duckhunt

duckhunt: miguelT.cpp
	g++ $(CFLAGS) miguelT.cpp ppm.cpp -Wall -Wextra $(LFLAGS) -o duckhunt

clean:
	rm -f duckhunt
	rm -f *.o

