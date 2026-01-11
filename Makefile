CC = gcc
CFLAGS = -Wall -Wextra -std=c11 -O2
TARGET = _build/runscript
SRC = runscript.c

.PHONY: all clean install

all: $(TARGET)

$(TARGET): $(SRC)
	mkdir -p _build
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET)

install: $(TARGET)
	install -m 755 $(TARGET) /usr/local/bin/$(TARGET)
