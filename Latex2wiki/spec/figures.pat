###############################################
# FILE: figures.pat
# SUBJ: comment
# AUTH: Your Name Here
# CREATED: 23/Mar/17 09:39:24
# MODIFIED:
###############################################

@NODES _ROOT

@POST
S("type") = "figure";
single();

@RULES
_figure <-
    _beginFigure	### (1)
    _xWILD			### (2)
    _endFigure		### (3)
    @@
