%option noyywrap
%{
	#include<stdio.h>
%}

%%
[a-z]{2}[0-9]{6}@uaeh\.edu\.mx { printf("Email institucional: %s", yytext); }
. { /* ignorar cualquier otro caracter */ }
%%

int main()
{
	printf("Ingrese email institucional de la UAEH:");
	yylex();
	return 0;
}