###############################################
# FILE: latextags.pat
# SUBJ: comment
# AUTH: Your Name Here
# CREATED: 19/Mar/17 18:31:42
# MODIFIED:
###############################################

@NODES _ROOT

@RULES

@RULES
_spacing <-
    \\ [s]								### (1)
    _xWILD [s match=(hspace vspace)]	### (2)
    \{ [s]								### (3)
    _xWILD [s fails=(\})]				### (4)
    \} [s]								### (5)
    @@
	
@POST
S("title") = N("$text",3);
G("title") = S("title");
single();

@RULES
_title <-
    mytitle	### (1)
    \{		### (2)
    _xWILD	### (3)
    \}		### (4)
    @@
	
@POST
S("authors") = N("$text",3);
G("authors") = S("authors");
single();

@RULES
_authors <-
    myauthors	### (1)
    \{		### (2)
    _xWILD	### (3)
    \}		### (4)
    @@

@POST
S("type") = N("$text",4);
S("title") = N("$text",6);
single();

@RULES
_section <-
    \\														### (1)
    cnpsheading												### (2)
    \\														### (3)
    _xWILD [plus match=(section subsection subsubsection)]	### (4)
    \{														### (5)
    _xWILD													### (6)
    \}														### (7)
    @@

@RULES
_beginAbs <-
    \\ [s]			### (1)
    begin [s]		### (2)
    \{ [s]			### (3)
    abstract [s]	### (4)
    \} [s]			### (5)
    @@
	
@RULES
_endAbs <-
    \\ [s]			### (1)
    end [s]			### (2)
    \{ [s]			### (3)
    abstract [s]	### (4)
    \} [s]			### (5)
    @@
	
@RULES
_beginFigure <-
    \\ [s]		### (1)
    begin [s]	### (2)
    \{ [s]		### (3)
    figure [s]	### (4)
    \} [s]		### (5)
    @@
	
@RULES
_endFigure <-
    \\ [s]		### (1)
    end [s]		### (2)
    \{ [s]		### (3)
    figure [s]	### (4)
    \} [s]		### (5)
    @@
	
@RULES
_bibliography <-
    \\ [s]					### (1)
    bibliographystyle [s]	### (2)
    \{ [s]					### (3)
    _xWILD [s]				### (4)
    \} [s]					### (5)
    @@

@POST
S("cite") = N("$text",4);
addCite(N("$text",4));
single();

@RULES
_cite <-
    \\ [s]		### (1)
    cite [s]	### (2)
    \{ [s]		### (3)
    _xWILD [s]	### (4)
    \} [s]		### (5)
    @@

@POST
S("ref type") = N("$text",4);
S("ref") = N("$text",6);
L("full") = N("$text",4) + ":" + N("$text",6);
S("full") = L("full");
addReference(L("full"),S("ref type"),S("ref"));
single();

@RULES
_ref <-
    \\ [s]			### (1)
    ref [s]			### (2)
    \{ [s]			### (3)
    _xWILD [s one]	### (4)
    \: [s]			### (5)
    _xWILD [s]		### (6)
    \} [s]			### (7)
    @@

@RULES
_beginBib <-
    \\ [s]				### (1)
    begin [s]			### (2)
    \{ [s]				### (3)
    thebibliography [s]	### (4)
    \} [s]				### (5)
    \{ [s]				### (6)
    _xNUM [s]			### (7)
    \} [s]				### (8)
    @@

@RULES
_endBib <-
    \\ [s]				### (1)
    end [s]				### (2)
    \{ [s]				### (3)
    thebibliography [s]	### (4)
    \} [s]				### (5)
    @@

@RULES
_beginEq <-
    \\ [s]			### (1)
    begin [s]		### (2)
    \{ [s]			### (3)
    equation [s]	### (4)
    \} [s]			### (5)
    @@
	
@RULES
_endEq <-
    \\ [s]			### (1)
    end [s]			### (2)
    \{ [s]			### (3)
    equation [s]	### (4)
    \} [s]			### (5)
    @@

@POST
S("label type") = N("$text",4);
S("label name") = N("$text",6);
S("label full") = N("$text",4) + ":" + N("$text",6);
single();

@RULES
_label <-
    \\ [s]		### (1)
    label [s]	### (2)
    \{ [s]		### (3)
    _xWILD [s]	### (4)
    \: [s]		### (5)
    _xWILD [s]	### (6)
    \} [s]		### (7)
    @@

@RULES
_beginEnum <-
    \\ [s]			### (1)
    begin [s]		### (2)
    \{ [s]			### (3)
    enumerate [s]	### (4)
    \} [s]			### (5)
    @@
	
@RULES
_endEnum <-
    \\ [s]			### (1)
    end [s]			### (2)
    \{ [s]			### (3)
    enumerate [s]	### (4)
    \} [s]			### (5)
    @@
	
@RULES
_beginSplit <-
    \\ [s]		### (1)
    begin [s]	### (2)
    \{ [s]		### (3)
    split [s]	### (4)
    \} [s]		### (5)
    @@
	
@RULES
_endSplit <-
    \\ [s]		### (1)
    end [s]	### (2)
    \{ [s]		### (3)
    split [s]	### (4)
    \} [s]		### (5)
    @@

