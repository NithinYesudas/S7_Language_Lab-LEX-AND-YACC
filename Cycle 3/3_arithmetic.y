%{
    #include <stdio.h>

%}
%token NUMBER
%left '+' '-'
%left '*' '/'

%%
stmt: T {printf("Valid expression: %d\n", $$);exit(0);}
;
T:  T '+' T {$$ = $1 + $3;}|
    T '-' T {$$ = $1 - $3;}|
    T '*' T {$$ = $1 * $3;}|
    T '/' T {$$ = $1 / $3;}|
    '(' T ')' { $$ = $2;}|
    NUMBER
;
%%
int yyerror(char *msg) 
{ 
printf("invalid string\n"); 
exit(0); 
} 
int main(){
    printf("Enter a arithmetic expression: ");
    yyparse();
}
