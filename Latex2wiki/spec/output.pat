###############################################
# FILE: output.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 23/Mar/17 10:04:01
# MODIFIED:
###############################################

@NODES _ROOT

@POST
"output.txt" << "\n\n";
@RULES
_xNIL <-
    _BLANKLINE	### (1)
    @@
	
@POST
"output.txt" << "\n";
@RULES
_xNIL <-
    _NEWLINE	### (1)
    @@

@POST
"output.txt" << " ''";
@RULES
_xNIL <-
    _italic	### (1)
    @@
		
@POST
"output.txt" << " '''";
@RULES
_xNIL <-
    _bold	### (1)
    @@
	
@POST
"output.txt" << " '''";
@RULES
_xNIL <-
    _emph	### (1)
    @@
	
@POST
"output.txt" << "# " << N("$text") << "\n";
@RULES
_xNIL <-
    _itemNum	### (1)
    @@

@POST
"output.txt" << "==Abstract==\n";
@RULES
_xNIL <-
    _beginAbs	### (1)
    @@

@POST
"output.txt" << N("text");
@RULES
_xNIL <-
    _text	### (1)
    @@
	
@POST
if (N("type") == "section") {
	"output.txt" << "==" << N("title") << "==";
}
else if (N("type") == "subsection") {
	"output.txt" << "===" << N("title") << "===";
}
else if (N("type") == "subsubsection") {
	"output.txt" << "====" << N("title") << "====";
}
@RULES
_xNIL <-
    _section	### (1)
    @@
	
@POST
"output.txt" << "<figure id=\"" << N("label") << "\">\n";
L("filename") = figureImageFilename(N("image"));
"output.txt" << "[[Image:" << L("filename") << "|thumbnail|300px|<caption>" << N("caption") << "</caption>]]" << "\n";
"output.txt" << "</figure>";
@RULES
_xNIL <-
    _figure	### (1)
    @@	
	
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
	
@POST
if (N("name")) {
	L("con") = findEquation(N("name"));
	L("equations") = findattr(L("con"),"equations");
	if (L("equations")) L("value") = attrvals(L("equations"));
	L("number") = conceptname(L("con"));
	"equation.txt" << "Equ out num: " << L("number") << "\n";
}
		
if (N("full") || N("split")) {
    L("first") = 1;
	while (L("value")) {
		L("equ") = cleanEquation(getstrval(L("value")));
		if (!L("first") && N("split"))
			"output.txt" << "<math>" << L("equ") << "</math> \n";
		else
			"output.txt" << "<math>(" << L("number") << ")\\ \\ " << L("equ") << "</math> \n";
		L("value") = nextval(L("value"));
		L("first") = 0;
	}
	
} else {
	"output.txt" << "<math>" << N("equation") << "</math> ";
}

@RULES
_xNIL <-
    _equation	### (1)
    @@

@POST
"output.txt" << " <math display=\"inline\">" << N("equation") << "</math> ";
@RULES
_xNIL <-
    _equationInline	### (1)
    @@

