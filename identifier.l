%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>
    
    
%}
%%
"int"|"float"|"return"|"if"|"else"|"switch"|"break"|"include" {printf("Invalid");exit(0);}
^[a-zA-Z_]+[0-9_]* {printf("Valid");exit(0);}
^[^a-zA-Z_] {printf("Invalid");exit(0);}
.;
%%
int yywrap(){}
int main(){
    printf("Enter the word: ");
    yylex();
}