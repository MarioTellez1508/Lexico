%option noyywrap
%{
	#include<stdio.h>
%}

%%
[0-9]+ { printf("Numero entero: %s\n", yytext); }
. { /* ignorar cualquier otro caracter */ }
%%

int main()
{
	printf("Ingrese numeros enteros:\n");
	yylex();
	return 0;
}