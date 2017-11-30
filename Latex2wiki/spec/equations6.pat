###############################################
# FILE: equations.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 04/Apr/17 22:55:07
# MODIFIED:
###############################################

@PATH _ROOT _equation _split

@POST
addEquationToLabel(X("name",2),N("$text"));
X("split",2) = 1;

@RULES
_xNIL <-
    _equation [s]
    @@
