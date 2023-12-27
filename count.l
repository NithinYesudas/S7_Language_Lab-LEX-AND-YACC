%{
    #include <stdlib.h>
    #include <stdio.h>
    #include <string.h>
    int stmt,identifier, ass,rel,key,integer;
%}
%%

"int"|"float"|"return"|"if"|"else"|"switch"|"break"|"include" {
   
    key++; }

[a-zA-Z_]+[0-9_]* {identifier++;printf(yytext)}
 ">"|"<"|"<="|">="|"=="|"!=" {rel++;}
[0-9] {integer++;}
"=" {ass++;}
; {stmt++;}
. ;


%%
int yywrap(){}
int main(){
    extern FILE *yyin;
    yyin = fopen("a.c","r");
    yylex();
    printf("stmt: %d\n",stmt);
    printf("key: %d\n",key);
    printf("integer: %d\n",integer);
    printf("identifier: %d\n",identifier);
    printf("relational: %d\n",rel);
    printf("assignment: %d\n", ass);
}