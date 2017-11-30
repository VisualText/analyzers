###############################################
# FILE: equations.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 04/Apr/17 22:55:07
# MODIFIED:
###############################################

@NODES _ROOT

@RULES
_equation <-
    _beginEq [s]	### (1)
    _xWILD [s]		### (2)
    _endEq [s]		### (3)
    @@

@POST
S("equation") = N("$text",2);
single();

@RULES
_equationInline <-
    \$ [s]		### (1)
    _xWILD [s]	### (2)
    \$ [s]		### (3)
    @@