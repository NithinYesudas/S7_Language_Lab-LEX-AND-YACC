%{
    #include <stdio.h>
	#include <stdlib.h>

	int vow_count=0;
	int const_count =0;
%}

%%

[aeiouAEIOU] {vow_count++;}
[a-zA-Z] {const_count++;}
\n {printf("Vowel Count: %d\n",vow_count);
printf("Consonant count: %d",const_count);
exit(0);}
%%

int yywrap(){}
int main()
{
	printf("Enter the string of vowels and consonants:");
	yylex();

	return 0;
} 
