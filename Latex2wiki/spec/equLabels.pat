###############################################
# FILE: equLabels.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 04/Apr/17 22:56:45
# MODIFIED:
###############################################

@NODES _equation

@POST
"debug.txt" << "addEquationToLabel 1\n";
if (!X("split")) {
	group(3,3,"_equation");
	X("full") = N("label full",2);
	X("label") = N("label type",2);
	X("name") = N("label name",2);
	X("equation") = N("$text",3);
	addEquationToLabel(N("label name",2),N("$text",3));
}

@RULES
_xNIL <-
    _beginEq	### (1)
    _label		### (2)
    _xWILD		### (3)
    _endEq		### (4)
    @@
	
@POST
"debug.txt" << "addEquationToLabel 2\n";
if (!X("split")) {
	group(3,3,"_equation");
	X("equation") = N("$text",2);
}

@RULES
_xNIL <-
    _beginEq	### (1)
    _xWILD		### (2)
    _endEq		### (3)
    @@


