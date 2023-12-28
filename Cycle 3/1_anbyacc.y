%{ 
/* Definition section */
#include<stdio.h> 
#include<stdlib.h> 
int count = 0;
%} 

%token A B NL 

/* Rule Section */
%% 
stmt: A A A A A S B NL { 
    printf("valid string");
    exit(0);
 } 
; 
S: S A | 
; 

%% 

int yyerror(char *msg) 
{ 
printf("invalid string\n"); 
exit(0); 
} 

//driver code 
int main() 
{ 
printf("enter the string\n"); 
yyparse(); 
} 
