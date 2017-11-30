###############################################
# FILE: bib.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 27/Mar/17 13:46:05
# MODIFIED:
###############################################

@NODES _FOOTER

@RULES
_bibBlock <-
    _beginBib					### (1)
    _xWILD [group=("_bibBody")]	### (2)
    _endBib						### (3)
    @@
