###############################################
# FILE: bibItem.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 28/Dec/17 12:31:55
# MODIFIED:
###############################################

@PATH _ROOT _bibItem

@POST
addBib(X("ref",0)," - ");

@RULES
_xNIL <-
    _dash [s]	### (1)
    @@

@POST
addBib(X("ref",0)," ''");

@RULES
_xNIL <-
    _bold	### (1)
    @@

@POST
addBib(X("ref",0)," '''");

@RULES
_xNIL <-
    _emph	### (1)
    @@
	
@POST
addBib(X("ref",0)," '''");

@RULES
_xNIL <-
    _italics	### (1)
    @@
	
@POST
addBib(X("ref",0),N("$text"));

@RULES
_xNIL <-
    _text	### (1)
    @@