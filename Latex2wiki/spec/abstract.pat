###############################################
# FILE: output.pat
# SUBJ: comment
# AUTH: Your Name Here
# CREATED: 19/Mar/17 19:58:27
# MODIFIED:
###############################################

@NODES _ROOT

@POST
S("text") = N("$text",2);
S("type") = "abstract";
single();

@RULES
_abstract <-
    _beginAbs	### (1)
    _xWILD		### (2)
    _endAbs		### (3)
    @@

