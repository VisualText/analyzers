###############################################
# FILE: kb.pat
# SUBJ: comment
# AUTH: David de Hilster
# CREATED: 27/Mar/17 12:50:08
# MODIFIED:
###############################################

@CODE

G("bookkeeping") = findconcept(findroot(),"bookkeeping");
if (!G("bookkeeping")) G("bookkeeping") = makeconcept(findroot(),"bookkeeping");

G("cites") = findconcept(G("bookkeeping"),"cites");
if (!G("cites")) G("cites") = makeconcept(G("bookkeeping"),"cites");

rmchildren(G("cites"));

G("figures") = findconcept(G("bookkeeping"),"figures");
if (!G("figures")) G("figures") = makeconcept(G("bookkeeping"),"figures");

rmchildren(G("figures"));

G("equations") = findconcept(G("bookkeeping"),"equations");
if (!G("equations")) G("equations") = makeconcept(G("bookkeeping"),"equations");

rmchildren(G("equations"));

G("references") = findconcept(G("bookkeeping"),"references");
if (!G("references")) G("references") = makeconcept(G("bookkeeping"),"references");

rmchildren(G("references"));

G("bibliography") = findconcept(G("bookkeeping"),"bibliography");
if (!G("bibliography")) G("bibliography") = makeconcept(G("bookkeeping"),"bibliography");

rmchildren(G("bibliography"));

@@CODE

