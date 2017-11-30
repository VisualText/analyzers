###############################################
# FILE: ordering.pat
# SUBJ: comment
# AUTH: Your Name Here
# CREATED: 19/Mar/17 19:58:27
# MODIFIED:
###############################################

@NODES _ROOT

@POST
if (N("type") == "figure")
{
   S("image") = N("image");
   S("label") = N("label");
   S("caption") = N("caption");
}
else
{
   S("text") = N("text");
   S("title") = N("title");
}
S("type") = N("type");
single();

@RULES
_item <-
    _xWILD [one match=(_abstract _sectionBlock _figure)]	### (1)
    @@
