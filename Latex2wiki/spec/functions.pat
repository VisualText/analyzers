###############################################
# FILE: functions.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 27/Mar/17 12:54:44
# MODIFIED:
###############################################

@DECL

figureImageFilename(L("filename")) {
	L("filename") = strsubst(L("filename"),"/","-");
	L("tit") = strsubst(G("title")," ","-");
	L("tit") = strsubst(L("tit"),"'","-");
	L("auths") = strsubst(G("authors")," ","-");
	L("newfile") = L("auths") + "-" + L("tit") + "-" + L("filename");
	if (!strcontainsnocase(".png",L("filename"))
	    && !strcontainsnocase(".jpg",L("filename"))) {
		L("newfile") = L("newfile") + ".jpg";
	}
	"images.txt" << L("newfile") << "\n";
	return L("newfile");
}

transQuotes(L("text"),L("tag"),L("quotes")) {
    L("start") = "\\" + L("tag") + "{";
	"debug.txt" << "transQuotes text: " << L("text") << "\n";
	"debug.txt" << "transQuotes tag: " << L("tag") << "\n";
	"debug.txt" << "transQuotes quotes: " << L("quotes") << "\n";
	L("new text") = strsubst(L("text"),L("start"),L("quotes"));
	L("new text") = strsubst(L("new text"),"}",L("quotes"));
	return L("new text");
}

addFigure(L("name")) {
	"kb.txt" << "addFigure: " << L("name") << "\n";
	G("fig count") = G("fig count") + 1;
	
	L("con") = findconcept(G("figures"),L("name"));
	if (!L("con")) makeconcept(G("figures"),L("name"));
}

addEquationName(L("name")) {
	"kb.txt" << "addEquation: " << L("name") << "\n";
	G("ref count") = G("ref count") + 1;
	
	L("con") = findconcept(G("equations"),L("name"));
	if (!L("con")) {
		L("con") = makeconcept(G("equations"),L("name"));
	}
	G("equation") = G("equation") + 1;
	addnumval(L("con"),"number",G("equation"));
	addstrval(L("con"),"name",L("name"));
}

addReference(L("name"),L("ref type"),L("type")) {
	"kb.txt" << "addReference: " << L("name") << "\n";
	G("ref count") = G("ref count") + 1;
	
	L("con") = findconcept(G("references"),L("name"));
	if (!L("con")) {
		L("con") = makeconcept(G("references"),L("name"));
	}
	addstrval(L("con"),"ref type",L("ref type"));
	addstrval(L("con"),"type",L("type"));
}

addCite(L("name")) {
	"kb.txt" << "addCite: " << L("name") << "\n";
	G("ref count") = G("ref count") + 1;
	
	L("con") = findconcept(G("cites"),L("name"));
	if (!L("con")) {
		L("con") = makeconcept(G("cites"),L("name"));
	}
}

addBib(L("name"),L("body")) {
	"bib.txt" << "addBib: " << L("name") << "\n";
	"bib.txt" << "   body in: " << L("body") << "\n";
	G("ref count") = G("ref count") + 1;
	
	L("con") = findconcept(G("bibliography"),L("name"));
	if (!L("con")) {
		L("con") = makeconcept(G("bibliography"),L("name"));
	}
	else {
	 	L("str") = strval(L("con"),"body");
		L("body") = L("str") + " " + L("body");
	}
	"bib.txt" << "   body new: " << L("body") << "\n";
	replaceval(L("con"),"body",L("body"));
}

getRefereceBody(L("name")) {
   	"cite.txt" << "getRefereceBody: " << L("name") << "\n";
	L("con") = findconcept(G("bibliography"),L("name"));
	L("body") = strval(L("con"),"body");
   	"cite.txt" << "getRefereceBody: " << L("body") << "\n";
	return L("body");
}

addEquationToLabel(L("label"),L("equation")) {
   	"equation.txt" << "addEquationToLabel: " << L("label") << ", " << L("equation") << "\n";
	L("con") = findconcept(G("equations"),L("label"));
	"equation.txt" << "Concept name found: " << conceptname(L("con")) << "\n";
	addstrval(L("con"),"equations",L("equation"));
}

findEquation(L("label")) {
   	"equation.txt" << "findEquation: " << L("label") << "\n";
	L("con") = findconcept(G("equations"),L("label"));
	"equation.txt" << "Concept name found: " << conceptname(L("con")) << "\n";
	return L("con");
}

getEquationNumber(L("label")) {
   	"equation.txt" << "getEquationNumber: " << L("label") << "\n";
	L("con") = findconcept(G("equations"),L("label"));
	"equation.txt" << "Concept name found: " << conceptname(L("con")) << "\n";
	L("number") = numval(L("con"),"number");
   	"equation.txt" << "getEquationNumber: " << L("number") << "\n";
	return L("number");
}

cleanEquation(L("equ")) {
	"equation.txt" << "Before: " << L("equ") << "\n";
	L("equ") = strsubst(L("equ"),"& =","=");
	L("equ") = strsubst(L("equ"),"&=","=");
	L("equ") = strsubst(L("equ"),"\\\\"," ");
	L("equ") = strtrim(L("equ"));
	"equation.txt" << "After: " << L("equ") << "\n";
	
	return L("equ");
}

@@DECL
