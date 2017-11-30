###############################################
# FILE: formats.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 15/Apr/17 23:12:05
# MODIFIED:
###############################################

@NODES _ROOT

@POST
singler(1,3);

@RULES
_bold <-
    \\ [s]					### (1)
    emph					### (2)
    \{ [s]					### (3)
    _xWILD [s fail=(\})]	### (4)
    \} [s group="_bold"]	### (5)
    @@
	
@POST
singler(1,3);

@RULES
_italics <-
    \\ [s]					### (1)
    textit [s]				### (2)
    \{ [s]					### (3)
    _xWILD [s fail=(\})]	### (4)
    \} [s group="_italics"]	### (5)
    @@

@POST
singler(1,3);

@RULES
_bold <-
    \\ [s]					### (1)
    textbf [s]				### (2)
    \{ [s]					### (3)
    _xWILD [s fail=(\})]	### (4)
    \} [s group="_bold"]	### (5)
    @@