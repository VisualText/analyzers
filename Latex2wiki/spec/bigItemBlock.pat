###############################################
# FILE: bigItemBlock.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 27/Mar/17 13:55:38
# MODIFIED:
###############################################

@PATH _ROOT

@POST
S("ref") = N("ref",1);
"bib.txt" << "Ref: " << S("ref") << "\n";
single();

@RULES
_bibItem <-
    _bibRef					### (1)
    _xWILD [fail=(_bibRef _endBib)]	### (2)
    @@
