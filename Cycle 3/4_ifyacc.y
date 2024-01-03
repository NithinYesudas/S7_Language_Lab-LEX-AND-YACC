%{
    #include <stdio.h>
    #include <stdlib.h>
%}
%token IF ELSE NL EQ ID NUM REL

%%
S: stmt NL {printf("Valid statement");exit(0);}
stmt:  IF '('cond')''{'st ';''}'else;
else: ELSE '{' st ';' '}' | 
;
cond: ID REL ID |
      ID REL NUM |
      ID EQ NUM |
      ID EQ ID 

;
st: ID '=' ID |
    ID '=' NUM |
    ID '+' NUM |
    ID '-' NUM 
;
%%
int yyerror(char *msg){
    printf("Invalid");

}
int main(){
    printf("Enter String: ");
    yyparse();
}
