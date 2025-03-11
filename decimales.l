%option noyywrap
%{
	#include<stdio.h>
%}

%%
[0-9]+\.[0-9]+ { printf("Numero decimal: %s\n", yytext); }
. { /* ignorar cualquier otro caracter */ }
%%

int main()
{
	printf("Ingrese numeros decimales:\n");
	yylex();
	return 0;
}