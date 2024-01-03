%{
#include "y.tab.h"
%}
%%
\n ;
"\t" ;
" "+ ;
for {return FOR;}
int {return INT;}
[a-z]+ {return ID;}
[0-9]+ {return NUM;}
"++" {return INC;}

. {return yytext[0];}
%%
int yywrap(){
    
    return 0;
}
