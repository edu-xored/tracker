PREFIX = $(HOME)
SRC_PATH = $(PREFIX)/bin
MAN_PATH = $(PREFIX)/share/docgit-doc

SRC_OBJ =git-bug
MAN_OBJ = git-bug.html
.PHONY: install
install:
	mkdir -p $(SRC_PATH)
	if [ -a $(SRC_PATH)/$(SRC_OBJ)  ] ; then  rm $(SRC_PATH)/$(SRC_OBJ) ; fi;
	install $(SRC_OBJ) $(SRC_PATH)
	mkdir -p $(MAN_PATH)
	if [ -a $(MAN_PATH)/$(MAN_OBJ)  ] ; then  rm $(MAN_PATH)/$(MAN_OBJ) ; fi;
	install $(MAN_OBJ) $(MAN_PATH)
