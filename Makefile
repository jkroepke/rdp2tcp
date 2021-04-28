all: client

client: client/rdp2tcp
client/rdp2tcp:
	make -C client

server-mingw32:
	make -C server -f Makefile.mingw32

server-mingw64:
	make -C server -f Makefile.mingw64

clean:
	make -C client clean
	make -C server -f Makefile.mingw32 clean
	make -C server -f Makefile.mingw64 clean
	make -C tools clean
