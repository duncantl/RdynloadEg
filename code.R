dso = sprintf("%s%s", c("Central", "T", "R"), .Platform$dynlib.ext)
if(!all(file.exists(dso)))
   stop("You need to build all of the shared libraries. Use make at the shell prompt")

try(dyn.load("T.so"))   # Fails, missing symbol Rso

dyn.load("T.so", , now = FALSE) # Success, but don't call foo().
.C("selfReliant")

dyn.load("Central.so")
try(dyn.load("T.so"))  # Fails missing Rso

dyn.load("Central.so", local = FALSE)
dyn.load("T.so")
.C("foo")

