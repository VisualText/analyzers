###############################################
# FILE: equations.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 04/Apr/17 22:55:07
# MODIFIED:
###############################################

@PATH _ROOT _equation

@POST
X("type",2) = N("label type");
X("name",2) = N("label name");
addEquationName(N("label name"));

@RULES
_xNIL <-
    _label [s]
    @@
