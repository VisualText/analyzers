###############################################
# FILE: listItems.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 09/Apr/17 14:21:32
# MODIFIED:
###############################################

@NODES _enum

@RULES
_itemMarker <-
    \\ [s]		### (1)
    item [s]	### (2)
    @@
