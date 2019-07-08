###############################################
# FILE: bitText.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 28/Dec/17 13:49:34
# MODIFIED:
###############################################

@PATH _ROOT _bibItem

@POST
S("text") = N("$text",3);
S("type") = "text";
single();

@RULES
_text <-
    _xWILD [s plus fails=(_dash _bibItem _bibRef _spacing _text _bold _italics _emph _NEWLINE)]	### (3)
    @@