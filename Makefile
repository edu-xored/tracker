SHELL     = /bin/bash
SRC_PATH  = "`git --exec-path`"
MAN_PATH  = "`git --man-path`"
HTML_PATH = "`git --html-path`"
OBJ_NAME  = git-bug
SRC_OBJ   = $(OBJ_NAME)
MAN_OBJ   = $(OBJ_NAME).gz
HTML_OBJ  = $(OBJ_NAME).html

.PHONY: all install uninstall

all:
 
install:
	mkdir -p $(SRC_PATH)
	if [ -f $(SRC_PATH)/$(SRC_OBJ) ] ; then  rm $(SRC_PATH)/$(SRC_OBJ) ; fi;
	install src/$(SRC_OBJ) $(SRC_PATH)

	mkdir -p $(MAN_PATH)
	if [ -f $(MAN_PATH)/$(MAN_OBJ) ] ; then  rm $(MAN_PATH)/$(MAN_OBJ) ; fi;
	install man/$(MAN_OBJ) $(MAN_PATH)

	mkdir -p $(HTML_PATH)
	if [ -f $(HTML_PATH)/$(HTML_OBJ) ] ; then  rm $(HTML_PATH)/$(HTML_OBJ) ; fi;
	install man/$(HTML_OBJ) $(HTML_PATH)

uninstall:
	if [ -f $(SRC_PATH)/$(SRC_OBJ) ] ; then  rm $(SRC_PATH)/$(SRC_OBJ) ; fi;
	if [ -f $(MAN_PATH)/$(MAN_OBJ) ] ; then  rm $(MAN_PATH)/$(MAN_OBJ) ; fi;
	if [ -f $(HTML_PATH)/$(HTML_OBJ) ] ; then  rm $(HTML_PATH)/$(HTML_OBJ) ; fi;
