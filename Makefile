# UNIX Makefile

CXX	= g++
LD	= g++
CXXFLAGS = -g

testlogicfunction: logicfunction.o testlogicfunction.o
	$(LD) -o testlogicfunction $^

logicfunction.o: logicfunction.h
testlogicfunction.o: logicfunction.h testcases.h

clean:
	$(RM) *.o testlogicfunction
