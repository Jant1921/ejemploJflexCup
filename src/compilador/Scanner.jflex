package compilador;
import java_cup.runtime.Symbol;

%%

%cupsym Simbolo
%class Scanner
%cup
%public
%unicode
%line
%column
%ignorecase

numero = [0-9]+ "."?[0-9]*
palabra = [a-zA-ZÑñ]+

%%


"<html>"         {return new Symbol(Simbolo.ihtml, yycolumn,yyline); }     
"<head>"         {return new Symbol(Simbolo.ihead, yycolumn,yyline); }     
"<title>"        {return new Symbol(Simbolo.ititle, yycolumn,yyline); }     
"</title>"       {return new Symbol(Simbolo.ftitle, yycolumn,yyline); }     
"</head>"        {return new Symbol(Simbolo.fhead, yycolumn,yyline); }     
"<body>"         {return new Symbol(Simbolo.ibody, yycolumn,yyline); }     
"<h1>"           {return new Symbol(Simbolo.ih1, yycolumn,yyline); }     
"</h1>"          {return new Symbol(Simbolo.fh1, yycolumn,yyline); }     
"</body>"        {return new Symbol(Simbolo.fbody, yycolumn,yyline); }     
"</html>"        {return new Symbol(Simbolo.fhtml, yycolumn,yyline); }


{numero}         {return new Symbol(Simbolo.numero, yycolumn,yyline,new Integer(yytext()));}
{palabra}        {return new Symbol(Simbolo.palabra, yycolumn,yyline,new String(yytext()));}

/* BLANCOS */
[ \t\r\f\n]+       { /* Se ignoran */}

/* Cualquier Otro */
.   { throw new Error("Caracter ilegal <"+yytext()+">"); }     
