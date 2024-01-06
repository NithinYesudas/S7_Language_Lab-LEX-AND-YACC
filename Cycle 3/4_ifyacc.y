%{
    #include <stdio.h>
    #include <stdlib.h>
%}
%token IF ELSE EQ ID NUM REL

%%
S: stmt {printf("Valid statement");exit(0);}
;
stmt:  IF '(' cond ')' '{' T '}' else
;
else: ELSE '{' T '}' | 
;

cond: ID REL ID |
      ID REL NUM |
      ID EQ NUM |
      ID EQ ID 

;

      
T: code ';' T |
;
code:   ID '=' ID   |
        ID '=' NUM  |
        ID '+' NUM  |
        ID '-' NUM  |
        ID '+' ID   |
        ID '-' ID   |
        ID '=' NUM '+' NUM 
        
        
;
%%
int yyerror(char *msg){
    printf("Invalid");

}
int main(){
    extern FILE *yyin;
    yyin = fopen("input.txt","r");
    yyparse();
}
