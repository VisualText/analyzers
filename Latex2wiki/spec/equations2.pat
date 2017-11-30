###############################################
# FILE: equations.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 04/Apr/17 22:55:07
# MODIFIED:
###############################################

@NODES _equation

@POST
"split.txt" << N("$text",2) << "\n";
X("split") = 1;
single();

@RULES
_split <-
    _beginSplit [s]	### (1)
    _xWILD [s]		### (2)
    _endSplit [s]		### (3)
    @@