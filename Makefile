SHELL     = /bin/bash
SRC_PATH  = "`git --exec-path`"
MAN_PATH  = "`git --man-path`"/man7
HTML_PATH = "`git --html-path`"
OBJ_NAME  = git-bug
SRC_OBJ   = $(OBJ_NAME)
MAN_OBJ   = $(OBJ_NAME).7
HTML_OBJ  = $(OBJ_NAME).html

.PHONY: all install uninstall

all:
 
install:
	mkdir -p $(SRC_PATH)
	if [ -f $(SRC_PATH)/$(SRC_OBJ) ] ; then  rm $(SRC_PATH)/$(SRC_OBJ) ; fi;
	find "$(SRC_PATH)" -name '$(SRC_OBJ)-*' -exec rm {} \;
	install src/$(SRC_OBJ) $(SRC_PATH)
	find "src/commands/" -name '$(SRC_OBJ)-*' -exec install {} $(SRC_PATH) \;

	mkdir -p $(MAN_PATH)
	if [ -f $(MAN_PATH)/$(MAN_OBJ).gz ] ; then  rm $(MAN_PATH)/$(MAN_OBJ).gz ; fi;
	install -g 0 -o 0 -m 0644 man/$(MAN_OBJ) $(MAN_PATH) 
	gzip $(MAN_PATH)/$(MAN_OBJ)

	mkdir -p $(HTML_PATH)
	if [ -f $(HTML_PATH)/$(HTML_OBJ) ] ; then  rm $(HTML_PATH)/$(HTML_OBJ) ; fi;
	install man/$(HTML_OBJ) $(HTML_PATH)

uninstall:
	if [ -f $(SRC_PATH)/$(SRC_OBJ) ] ; then  rm $(SRC_PATH)/$(SRC_OBJ) ; fi;
	find "$(SRC_PATH)" -name '$(SRC_OBJ)-*' -exec rm {} \;
	if [ -f $(MAN_PATH)/$(MAN_OBJ).gz ] ; then  rm $(MAN_PATH)/$(MAN_OBJ).gz ; fi;
	if [ -f $(HTML_PATH)/$(HTML_OBJ) ] ; then  rm $(HTML_PATH)/$(HTML_OBJ) ; fi;
