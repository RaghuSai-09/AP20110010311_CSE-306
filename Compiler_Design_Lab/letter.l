%{
	#include<stdio.h>
%}

%%
[a-zA-Z][a-z A-Z 0-9]* {printf("%s is an Letter\n",yytext);}

%%

int yywrap() 
{
	return 1;
}

int main()
{
	printf("Enter the string: ");
	yylex();
	return 0;
}
