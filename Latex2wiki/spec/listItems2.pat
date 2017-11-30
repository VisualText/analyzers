###############################################
# FILE: listItems.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 09/Apr/17 14:21:32
# MODIFIED:
###############################################

@NODES _enum

@POST
noop();

@RULES
_xNIL <-
    _itemMarker				### (1)
    _xWILD [group="_itemNum"]	### (2)
    _itemMarker [lookahead]	### (3)
    @@
	
_xNIL <-
    _itemMarker				### (1)
    _xWILD [group="_itemNum"]	### (2)
    _endEnum				### (3)
    @@
	
_xNIL <-
    _itemMarker				### (1)
    _xWILD [group="_itemNum"]	### (2)
    _xEND					### (3)
    @@

