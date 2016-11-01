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
	if [ -a $(SRC_PATH)/$(SRC_OBJ)  ] ; then  rm $(SRC_PATH)/$(SRC_OBJ) ; fi;
	install $(SRC_OBJ) $(SRC_PATH)

	mkdir -p $(MAN_PATH)
	if [ -a $(MAN_PATH)/$(MAN_OBJ)  ] ; then  rm $(MAN_PATH)/$(MAN_OBJ) ; fi;
	install $(MAN_OBJ) $(MAN_PATH)

	mkdir -p $(HTML_PATH)
	if [ -a $(HTML_PATH)/$(HTML_OBJ)  ] ; then  rm $(HTML_PATH)/$(HTML_OBJ) ; fi;
	install $(HTML_OBJ) $(HTML_PATH)

uninstall:
	if [ -a $(SRC_PATH)/$(SRC_OBJ)  ] ; then  rm $(SRC_PATH)/$(SRC_OBJ) ; fi;
	if [ -a $(MAN_PATH)/$(MAN_OBJ)  ] ; then  rm $(MAN_PATH)/$(MAN_OBJ) ; fi;
	if [ -a $(HTML_PATH)/$(HTML_OBJ)  ] ; then  rm $(HTML_PATH)/$(HTML_OBJ) ; fi;
