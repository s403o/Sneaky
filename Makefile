CC = g++
CFLAGS = -Wall
LIBS = -lGL -lGLU -lglut
EXECUTABLE = sneaky

build: install $(EXECUTABLE)

$(EXECUTABLE): main.cpp
	$(CC) $(CFLAGS) $< -o $@ $(LIBS)

run: $(EXECUTABLE)
	./$(EXECUTABLE)

clean:
	rm -f $(EXECUTABLE)

install:
	sudo apt install freeglut3-dev zenity

.PHONY: all run clean install
