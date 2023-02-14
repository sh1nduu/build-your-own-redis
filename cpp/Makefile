CXX=g++
CFLAGS = -Wall -Wextra -O2 -std=gnu++11 -g -save-temps=obj
DEST = output

CHAPTER :=

all: clean server client

chapter:
	$(call __require_CHAPTER)

server: server.o hashtable.o
	$(CXX) $(CFLAGS) $(DEST)/server.o $(DEST)/hashtable.o -o $(DEST)/server

server.o: chapter
	$(CXX) $(CFLAGS) -c $(CHAPTER)_server.cpp -o $(DEST)/server.o

hashtable.o: hashtable.cpp
	$(CXX) $(CFLAGS) -c hashtable.cpp -o $(DEST)/hashtable.o

client: client.o
	$(CXX) $(CFLAGS) $(DEST)/client.o -o $(DEST)/client

client.o: chapter
	$(CXX) $(CFLAGS) -c $(CHAPTER)_client.cpp -o $(DEST)/client.o

clean:; rm -rf $(DEST)/*


define __require_CHAPTER
    @bash -c "if [ '${CHAPTER}' = '' ]; then echo 'CHAPTER is not defined; you must specify CHAPTER like $$ make CHAPTER=08 all'; exit 1; fi"
endef
