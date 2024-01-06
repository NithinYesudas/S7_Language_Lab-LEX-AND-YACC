%{
#include "y.tab.h"
%}
%%

\n ;
"\t" ;
" "+ ;
if {return IF;}
else {return ELSE;}
== |
!= {return EQ;}
">" | 
"<" {return REL;}
[a-z]+ {return ID;}
[0-9]+ {return NUM;}

. {return yytext[0];}
%%
int yywrap(){
    return 1;
}
