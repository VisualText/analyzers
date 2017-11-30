###############################################
# FILE: equations.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 04/Apr/17 22:55:07
# MODIFIED:
###############################################

@PATH _ROOT _equation _split

@RULES
_separator <-
    \\		### (1)
    \\		### (2)
    NEWLINE	### (3)
    @@

@POST
excise(1,1);
single();

@RULES
_equal <-
    \&					### (1)
    _xWHITE [optional]	### (2)
    \=					### (3)
    @@