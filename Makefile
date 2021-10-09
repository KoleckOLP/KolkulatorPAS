# operating system detection
ifeq ($(OS),Windows_NT)
	DOS = WINDOWS
	EXE = .exe
	DELETE = del
else
	EXE =
	DELETE = rm
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Linux)
		DOS = LINUX
	endif
	ifeq ($(UNAME_S),Darwin)
		DOS = MACOSX
	endif
endif

# this thing gets run no matter what.
.PHONKY:
	$(info YOUR OS IS $(OS))

# path to your qb64
FPC = fpc

# name of your projects source file
PRJ = main

PRJD = $(CURDIR)/$(PRJ)

# looks for the executable and runs it
run: $(PRJD)$(EXE)
	$(PRJD)$(EXE)

# makes the executavle by compiling the source file
$(PRJD)$(EXE): $(PRJ).pas
	$(FPC) $(PRJD).pas
	$(DELETE) $(PRJD).o

# deletes the executable
clean:
	$(DELETE) $(PRJD)$(EXE)