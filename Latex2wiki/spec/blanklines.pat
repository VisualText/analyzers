###############################################
# FILE: blanklines.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 27/Mar/17 15:54:52
# MODIFIED:
###############################################

@NODES _ROOT

@RULES
_BLANKLINE <-
    \n	### (1)
    \n	### (2)
    @@
	
@RULES
_NEWLINE <-
    \n	### (1)
    @@
