CC=gcc
CFLAGS+=-Wall -Werror 

export CC CFLAGS 

all: 
	@$(MAKE) -C src/daemon
	@$(MAKE) -C src/cli

.PHONY: clean
clean:	
	@$(MAKE) -C src/daemon clean
	@$(MAKE) -C src/cli clean

