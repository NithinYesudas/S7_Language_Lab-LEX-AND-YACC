%{
    #include <stdio.h>
    #include "y.tab.h"
    #include <stdlib.h>
%}
%%
a {return A;}
b {return B;}
\n {return NL;}
. {printf("invallid input");exit(0);}
%%
int yywrap(){
    return 1;
}