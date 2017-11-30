###############################################
# FILE: comments.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 23/Apr/17 16:24:24
# MODIFIED:
###############################################

@NODES _ROOT

@POST
group(1,2,"_COMMENT");

@RULES
_xNIL <-
    \%													### (1)
    _xWILD												### (2)
    _xWILD [lookahead matches=(_NEWLINE _BLANKLINE)]	### (3)
    @@
