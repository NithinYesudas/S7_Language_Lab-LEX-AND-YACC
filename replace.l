%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
%}
%%
"{" { fprintf(yyout,"%s","begin"); }
"}" { fprintf(yyout,"%s","end"); }
. { 
    
    fprintf(yyout,"%s",yytext);
   
   }
%%
int yywrap() {}
int main() {
    extern FILE *yyin, *yyout;
    yyin = fopen("a.c", "r");
    yyout = fopen("output.c", "w");

    yylex();

   

    return 0;
}
