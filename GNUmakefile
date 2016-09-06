# For Irix
LD_FLAGS=-shared

# For Solaris
LD_FLAGS= -G -KPIC
CFLAGS=-KPIC

# For gcc
LD_FLAGS= -shared -fPIC
CFLAGS=-fPIC




all: R.so T.so Central.so

R.so: foo.o
T.so: bar.o
Central.so: central.o

%.so: 
      R CMD SHLIB -o $@	$^

#%.o: %.c
#	$(CC) $(CFLAGS) -c $<


clean:
	-rm *.so *.o

tar:
	tar zcvf R-dynload.tar.gz *.c README GNUmakefile index.html

