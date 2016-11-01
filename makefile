SRC_PATH = "`bash -c "git --exec-path"`"
MAN_PATH = $(SRC_PATH)/../../share/doc/git-doc
SRC_OBJ = git-bug
MAN_OBJ = git-bug.html
.PHONY: all install uninstall
all:

install:
	if [ -a $(SRC_PATH)/$(SRC_OBJ)  ] ; then  rm $(SRC_PATH)/$(SRC_OBJ) ; fi;
	install $(SRC_OBJ) $(SRC_PATH)
	if [ -a $(MAN_PATH)/$(MAN_OBJ)  ] ; then  rm $(MAN_PATH)/$(MAN_OBJ) ; fi;
	install $(MAN_OBJ) $(MAN_PATH)
uninstall:
	if [ -a $(SRC_PATH)/$(SRC_OBJ)  ] ; then  rm $(SRC_PATH)/$(SRC_OBJ) ; fi;
	if [ -a $(MAN_PATH)/$(MAN_OBJ)  ] ; then  rm $(MAN_PATH)/$(MAN_OBJ) ; fi;
