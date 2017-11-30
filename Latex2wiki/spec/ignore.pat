###############################################
# FILE: ignore.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 27/Mar/17 11:04:09
# MODIFIED:
###############################################

@NODES _ROOT

@POST
singlex(4,4);

@RULES
_text <-
    \\ [s]							### (1)
    _xWILD [s one matches=(textit)]	### (2)
    \{ [s]							### (3)
    _xWILD [s fail=(\})]			### (4)
    \} [s]							### (5)
    @@