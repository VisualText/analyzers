###############################################
# FILE: equations.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 04/Apr/17 22:55:07
# MODIFIED:
###############################################

@PATH _ROOT _equation _split

@POST
singler(1,4);

@RULES
_equation <-
    _NEWLINE				### (1)
    _xWILD					### (2)
    _equal					### (3)
    _xWILD					### (4)
    _NEWLINE [lookahead]	### (5)
    @@
