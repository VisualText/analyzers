###############################################
# FILE: bigItemBlock.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 27/Mar/17 13:55:38
# MODIFIED:
###############################################

@PATH _ROOT _FOOTER _bibBlock _bibBody

@POST
S("ref") = N("ref",1);
L("body") = transQuotes(N("$text",2),"emph","'''");
L("body") = transQuotes(L("body"),"textit","''");
"bib.txt" << "Body: " << L("body") << "\n";
S("body") = L("body");
addBib(N("ref",1),L("body"));
single();

@RULES
_bitItem <-
    _bibRef					### (1)
    _xWILD [fail=(_bibRef)]	### (2)
    @@


