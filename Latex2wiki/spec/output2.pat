###############################################
# FILE: output.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 23/Mar/17 10:04:01
# MODIFIED:
###############################################

@NODES _abstract
	
@POST
if (N("ref type") == "eq") {
    L("number") = getEquationNumber(N("ref"));
    "output.txt" << L("number");
} else {
    "output.txt" << " <xr id=\"" << N("full") << "\"/> ";
}
@RULES
_xNIL <-
    _ref	### (1)
    @@

@POST
L("body") = getRefereceBody(N("cite"));
"output.txt" << " <ref>" << L("body") << "</ref> ";
@RULES
_xNIL <-
    _cite	### (1)
    @@
