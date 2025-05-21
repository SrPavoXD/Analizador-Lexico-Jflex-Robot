package codigo;

import static codigo.Tokens.*;

%%

%class Lexer
%public
%unicode
%type Tokens

%{
    public String lexeme;
%}

/* Expresiones regulares auxiliares */
NUM = [0-9]+
ESPACIO = [ \t\r\n]+

%%

/* Ignorar espacios */
{ESPACIO}                 { /* no hacer nada */ }

////////////////////////
// Palabras reservadas
////////////////////////
"Robot"                  { lexeme = yytext(); return Robot; }
"iniciar"                { lexeme = yytext(); return Iniciar; }

////////////////////////
// Métodos
////////////////////////
"velocidad"              { lexeme = yytext(); return Velocidad; }
"base"                   { lexeme = yytext(); return Base; }
"cuerpo"                 { lexeme = yytext(); return Cuerpo; }
"garra"                  { lexeme = yytext(); return Garra; }
"abrirGarra"             { lexeme = yytext(); return AbrirGarra; }
"cerrarGarra"            { lexeme = yytext(); return CerrarGarra; }
"repetir"                { lexeme = yytext(); return Repetir; }

////////////////////////
// Identificadores
////////////////////////
"b1" | "r1"              { lexeme = yytext(); return Identificador; }
[a-zA-Z_][a-zA-Z0-9_]*   { lexeme = yytext(); return Identificador; }

////////////////////////
// Números
////////////////////////
{NUM}                    { lexeme = yytext(); return Numero; }

////////////////////////
// Símbolos
////////////////////////
"("                      { lexeme = yytext(); return ParentesisA; }
")"                      { lexeme = yytext(); return ParentesisC; }
"="                      { lexeme = yytext(); return Igual; }
"."                      { lexeme = yytext(); return Punto; }
","                      { lexeme = yytext(); return Coma; }
";"                      { lexeme = yytext(); return PuntoComa; }

////////////////////////
// Error por defecto
////////////////////////
.                        { lexeme = yytext(); return ERROR; }
