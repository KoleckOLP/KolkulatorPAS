# path to your compiler
COMPILER = fpc

# name of your projects source file
PROJECT = main

# operating system detection
ifeq ($(OS),Windows_NT)
	DOS = WINDOWS
	EXE = .exe
	DELETE = del
# this has to be here because make on Windows is really bad.
	TEMP = $(CURDIR)/$(PROJECT)
	PROJECT_DIRECTORY = $(subst /,\, $(TEMP))
else
	EXE =
	DELETE = rm
	UNAME_S := $(shell uname -s)
	PROJECT_DIRECTORY = $(CURDIR)/$(PROJECT)
	ifeq ($(UNAME_S),Linux)
		DOS = LINUX
	endif
	ifeq ($(UNAME_S),Darwin)
		DOS = MACOSX
	endif
endif

# this thing gets run no matter what. And it's also a lie, like a pie.
.PHONKY:
	$(info YOUR OS IS $(OS))

# looks for the executable and runs it
run: $(PROJECT_DIRECTORY)$(EXE)
	$(PROJECT_DIRECTORY)$(EXE)

# makes the executable by compiling the source file
$(PROJECT_DIRECTORY)$(EXE): $(PROJECT).pas
	$(COMPILER) $(PROJECT_DIRECTORY).pas
	$(DELETE) $(PROJECT_DIRECTORY).o

# deletes the executable
clean:
	$(DELETE) $(PROJECT_DIRECTORY)$(EXE)
