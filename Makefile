TARGET = cmsa

SYSTEM     = x86-64_linux
LIBFORMAT  = static_pic
CPLEXDIR      = /home/leonardo/cplex/22.1.1/cplex
CONCERTDIR    = /home/leonardo/cplex/22.1.1/concert
GCC = gcc
CCC = g++
CCOPT = -m64 -O -fPIC -fexceptions -DNDEBUG -DIL_STD -std=c++20 -fpermissive -w
CPLEXBINDIR   = $(CPLEXDIR)/bin/$(BINDIST)
CPLEXLIBDIR   = $(CPLEXDIR)/lib/$(SYSTEM)/$(LIBFORMAT)
CONCERTLIBDIR = $(CONCERTDIR)/lib/$(SYSTEM)/$(LIBFORMAT)
CCLNFLAGS = -L$(CPLEXLIBDIR) -lilocplex -lcplex -L$(CONCERTLIBDIR) -lconcert -lm -pthread -lpthread -ldl
CLNFLAGS  = -L$(CPLEXLIBDIR) -lcplex -lm -pthread -lpthread -ldl
CONCERTINCDIR = $(CONCERTDIR)/include
CPLEXINCDIR   = $(CPLEXDIR)/include

CCFLAGS = $(CCOPT) -I$(CPLEXINCDIR) -I$(CONCERTINCDIR) 

all: ${TARGET}

cmsa: cmsa.o $(OBJS)
	$(CCC) $(CCFLAGS) cmsa.o -o cmsa $(CCLNFLAGS)

cmsa.o: cmsa.cpp
	$(CCC) -c $(CCFLAGS) cmsa.cpp -o cmsa.o 

clean:
	@rm -f *~ *.o ${TARGET} core

