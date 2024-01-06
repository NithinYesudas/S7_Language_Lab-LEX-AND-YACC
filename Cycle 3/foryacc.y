%{
    #include <stdio.h>
    #include <stdlib.h>
%}
%token FOR ID NUM INC INT
%%
S: stmt {printf("Valid for loop\n");exit(0);}
;
stmt: FOR '(' init ';' cond ';' incr ')' '{' T '}'
;
init: INT ID '=' NUM
;
cond: ID '<' NUM |
      ID '>' NUM |
      ID '<' ID |
      ID '>' ID
;

incr: ID INC

T: code ';' T |
;
code:   ID '=' ID   |
        ID '=' NUM  |
        ID '+' NUM  |
        ID '-' NUM  |
        ID '+' ID   |
        ID '-' ID   
        
        
;

%%
int yyerror(char *msg){
    printf("Invalid message");
    return 0;
}
int main(){
    extern FILE *yyin;
    yyin = fopen("input.txt","r");
    yyparse();


}
     
