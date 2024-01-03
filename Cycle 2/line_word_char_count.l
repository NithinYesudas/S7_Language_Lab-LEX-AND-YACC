%{
#include <stdio.h>
#include <stdlib.h>
int c,l=1,w;
int flag = 0;
extern FILE *yyin;
%}
%%
\n {l++;}
[a-zA-Z]+ {flag =1;c++;}
" " {if(flag ==1){w++;flag=0;}}
. {c++;}
%%
int yywrap(){}
int main(){
    
    yyin = fopen("input.txt", "r");
    yylex();
    printf("Character count: %d\n",c);
    printf("Word Count: %d\n",w);
    printf("Line count: %d\n",l);
}
