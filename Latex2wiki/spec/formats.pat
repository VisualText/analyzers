###############################################
# FILE: formats.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 15/Apr/17 23:12:05
# MODIFIED:
###############################################

@NODES _ROOT

@CHECK
"brackets.txt" << N("$text",2) << ": " << N("curly level",3) << " <=> " << N("curly level",5) << "\n";
if (N("curly level",3) != N("curly level",5))
	fail();
@POST
group(5,5,"_bold");
singler(1,3);

@RULES
_bold <-
    \\ [s]							### (1)
    _xWILD [matches=(textbf emph)]	### (2)
    \{ [s]							### (3)
    _xWILD [s]			### (4)
    \}								### (5)
    @@

@CHECK
"brackets.txt" << N("$text",2) << ": " << N("curly level",3) << " <=> " << N("curly level",5) << "\n";
if (N("curly level",3) != N("curly level",5))
	fail();	
@POST
group(5,5,"_italics");
singler(1,3);

@RULES
_italics <-
    \\ [s]					### (1)
    textit [s]				### (2)
    \{ [s]					### (3)
    _xWILD [s]	### (4)
    \}						### (5)
    @@
