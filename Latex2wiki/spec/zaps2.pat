###############################################
# FILE: zaps.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 09/Apr/17 14:36:22
# MODIFIED:
###############################################

@NODES _FOOTER

@POST
"zap.txt" << N("$text") << " - 2\n";
excise(1,1);

@RULES
_xNIL <-
	_xWILD [one match=(_beginEnum _endEnum _itemMarker _COMMENT _spacing)]	### (1)
	@@
