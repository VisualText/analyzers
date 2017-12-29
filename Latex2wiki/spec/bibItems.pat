###############################################
# FILE: bibItems.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 27/Mar/17 13:48:19
# MODIFIED:
###############################################

@NODES _ROOT

@POST
S("ref") = N("$text",4);
"bib.txt" << "Bib ref: " << S("ref") << "\n";
single();

@RULES
_bibRef <-
    \\ [s]					### (1)
    bibitem [s]				### (2)
    \{ [s]					### (3)
    _xWILD [s fails=(\})]	### (4)
    \} [s]					### (5)
    @@
