%option noyywrap
%{
	#include<stdio.h>
%}

%%
[a-zA-Z]{4}[0-9]{6}[A-Z0-9]{3}[A-Z0-9]? { printf("RFC: %s", yytext); }
. { /* ignorar cualquier otro caracter */ }
%%

int main(){
	printf("Ingrese RFC: \n");
	yylex();
	return 0;
}
