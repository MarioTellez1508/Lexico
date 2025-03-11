%option noyywrap
%{
	#include<stdio.h>
%}

%%
[a-zA-Z][a-zA-Z0-9_]* { printf("Variable: %s\n", yytext); }
. { /* ignorar cualquier otro caracter */ }
%%

int main()
{
	printf("Ingrese nombre de variable:\n");
	yylex();
	return 0;
}