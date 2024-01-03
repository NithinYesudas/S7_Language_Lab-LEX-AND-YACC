%{
#include <stdio.h>
#include <stdlib.h>
extern FILE *yyin, *yyout;
int flag = 0;
%}
%%
[0-9]+ {}
" "+ {flag = 1;}
. { if(flag==1){
    fprintf(yyout," %s",yytext);
    flag = 0;
    }else{
    fprintf(yyout,"%s",yytext);
    }
    }
%%
int yywrap(){

}
int main(){
    
    yyin = fopen("input.txt","r");
    yyout = fopen("output.txt","w");
    yylex();
  
   
}