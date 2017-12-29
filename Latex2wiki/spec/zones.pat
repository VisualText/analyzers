###############################################
# FILE: zones.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 27/Mar/17 17:10:10
# MODIFIED:
###############################################

@NODES _ROOT
	
@POST
singler(1,2);

@RULES
_IGNORE <-
    _xSTART				### (1)
    _xWILD				### (2)
    _beginAbs [lookahead]	### (3)
    @@

@POST
singler(2,2);

@RULES
_IGNORE <-
    _endAbs			### (1)
    _xWILD			### (2)
    _beginFigure	### (3)
    @@
		
@POST
singler(2,2);

@RULES
_IGNORE <-
    _endAbs		### (1)
    _xWILD		### (2)
    _section	### (3)
    @@

