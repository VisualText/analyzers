###############################################
# FILE: bibItems.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 27/Mar/17 13:48:19
# MODIFIED:
###############################################

@PATH _ROOT _FOOTER _bibBlock _bibBody

@POST
S("ref") = N("$text",4);
"bib.txt" << "Bib ref: " << S("ref") << "\n";
single();

@RULES
_bibRef <-
    \\ [s]		### (1)
    bibitem [s]	### (2)
    \{ [s]		### (3)
    _xWILD [s]	### (4)
    \} [s]		### (5)
    @@