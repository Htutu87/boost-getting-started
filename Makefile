
CC = g++
CFLAGS = -Wall -std=c++11 

HEADERS = -I /usr/include/boost
LIBS = -L/usr/lib/x86_64-linux-gnu -lboost_regex

SRCDIR = src
BINDIR = bin

OBJS = $(BINDIR)/regex.o

EXEC = bin/regex

$(BINDIR)/%.o: $(SRCDIR)/%.cpp
	$(CC) $(CFLAGS) -c $< -o $@

main: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(EXEC) $(HEADERS) $(LIBS) 

.PHONY: clean clean-objs

clean:
	rm $(EXEC)
clean-objs:
	rm $(BINDIR)/*.o
