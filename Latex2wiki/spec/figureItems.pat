###############################################
# FILE: figureItems.pat
# SUBJ: comment
# AUTH: Your Name Here
# CREATED: 23/Mar/17 09:42:39
# MODIFIED:
###############################################

@NODES _figure

@POST
S("image") = N("$text",7);
X("image") = N("$text",7);
"images.txt" << S("image") << "\n";
single();

@RULES
_image <-
    \\				### (1)
    includegraphics	### (2)
    \[				### (3)
    _xWILD			### (4)
    \]				### (5)
    \{				### (6)
    _xWILD			### (7)
    \}				### (8)
    @@

@POST
S("image") = N("$text",4);
X("image") = N("$text",4);
"images.txt" << S("image") << "\n";
single();

@RULES
_image <-
    \\				### (1)
    includegraphics	### (2)
    \{				### (3)
    _xWILD			### (4)
    \}				### (5)
    @@
	
@POST
X("label") = N("label full");
@RULES
_xNIL <-
    _label	### (2)
    @@

@POST
S("caption") = N("$text",4);
X("caption") = N("$text",4);
single();

@RULES
_caption <-
    \\	### (1)
    caption 	### (2)
    \{		### (3)
    _xWILD	### (4)
    \}		### (5)
    @@