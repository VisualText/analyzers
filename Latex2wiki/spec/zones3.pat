###############################################
# FILE: zones.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 27/Mar/17 17:10:10
# MODIFIED:
###############################################

@NODES _ROOT
		
@POST
singler(3,3);

@RULES
_BODY <-
    _ABSTRACT	### (1)
    _HEADER		### (2)
    _xWILD		### (3)
    _FOOTER		### (4)
    @@

