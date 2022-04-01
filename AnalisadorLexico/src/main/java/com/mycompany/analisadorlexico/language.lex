package com.mycompany.analisadorlexico

%%
%{

private void imprimir(String descricao, String lexema){
System.out.println(lexema + " - " + descricao);
}

%}

%class LexicaAnalyzer
%type void

BRANCO = [\n|  |\t|\r]
ID = [_|a-z|A-Z][a-z|A-Z|0-9|_]*
SOMA = "+"
INTEIR = 0|[1-9][0-9]*

%% 
"if"            {imprimir("Palavra reservada if" , yytext()); }
"then"          { imprimir("Palavra reservadad then" , yytext());}
{BRANCO}        { imprimir("Espaço em branco" , yytext());}
{ID}            {imprimir("Identificador", yytext());}
{SOMA}          {imprimir("Operador de soma" , yytext());}
{INTEIRO        {imprimir("Número Inteiro", yytext());}

. {throw new RuntimeException("Caractere inválido " + yytext());}
