###############################################
# FILE: text.pat
# SUBJ: comment
# AUTH: Your Name Here
# CREATED: 19/Mar/17 19:58:27
# MODIFIED:
###############################################

@NODES _ROOT

@POST
S("text") = N("$text",3);
S("type") = "text";
singler(3,3);

@RULES
_text <-
    _xWILD [matches=(_section _figure _ref _cite)]				### (1)
    _NEWLINE [s]												### (2)
    _xWILD [s plus fails=(_spacing _beginAbs _endAbs _figure _text _ref _cite _BLANKLINE _IGNORE _FOOTER _stopper _equation _equationInline _itemNum _bold _italic)]	### (3)
    _xWILD [match=(_spacing _beginAbs _endAbs _figure _text _abstract _ref _cite _BLANKLINE _IGNORE _FOOTER _stopper _equation _equationInline _itemNum _bold _italic) lookahead]	### (4)
    @@
	
@POST
S("text") = N("$text",2);
S("type") = "text";
singler(2,2);

@RULES
_text <-
    _xWILD [matches=(_section _figure _ref _cite)]				### (1)
    _xWILD [s plus fails=(_spacing _beginAbs _endAbs _figure _text _ref _cite _BLANKLINE _IGNORE _FOOTER _stopper _equation _equationInline _itemNum _bold _italic)]	### (2)
    _xWILD [match=(_spacing _beginAbs _endAbs _figure _text _abstract _ref _cite _BLANKLINE _IGNORE _FOOTER _stopper _equation _equationInline _itemNum _bold _italic) lookahead]	### (3)
    @@
