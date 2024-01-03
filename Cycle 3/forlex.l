%{
#include "y.tab.h"
%}
%%
for {return FOR;}
int {return INT;}
[a-z]+ {return ID;}
[0-9]+ {return NUM;}
"++" {return INC;}
\n {return NL;}
"\t" ;
" "+ ;
. {return yytext[0];}
%%
int yywrap(){
    
    return 0;
}
