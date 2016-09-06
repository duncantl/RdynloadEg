all: R.so T.so Central.so

R.so: foo.o
T.so: bar.o
Central.so: central.o

%.so: 
	R CMD SHLIB -o $@ $^

clean:
	-rm *.so *.o

tar:
	tar zcvf R-dynload.tar.gz *.c README GNUmakefile index.html code.R R.css


