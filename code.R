dyn.load("T.so")   # Fails, missing symbol Rso


dyn.load("T.so",,FALSE) # Success, but don't call foo().
.C("selfReliant")
#In selfReliant() (bar.c in T.so)
#list()
dyn.load("Central.so")
dyn.load("T.so")  # Fails missing Rso

dyn.load("Central.so",FALSE)
dyn.load("T.so")
.C("foo")
#Second External foo()
#In Rso.
#list()
