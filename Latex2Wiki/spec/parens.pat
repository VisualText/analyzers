###############################################
# FILE: parens.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 28/Dec/17 16:03:26
# MODIFIED:
###############################################


@NODES _ROOT

@POST
G("curly") = G("curly") + 1;
N("curly level") = G("curly");

@RULES
_xNIL <-
	\{	### (1)
	@@

@POST
N("curly level") = G("curly");
G("curly") = G("curly") - 1;

@RULES
_xNIL <-
	\}	### (1)
	@@
