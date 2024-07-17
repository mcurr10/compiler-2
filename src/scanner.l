/* CMSC 430 Compiler Theory and Design
   Project 1 Skeleton
   UMGC CITE
   Summer 2024
   Marissa Curry */

/* This file contains flex input file */

%{
#include <cstdio>
#include <string>

using namespace std;

#include "listing.h"
#include "tokens.h"

%}

%option noyywrap

ws		[ \t\r]+
comment		"//".*\n
comment2    "--".*\n

line		[\n]
id		[a-zA-Z]([a-zA-Z0-9]*(_{1,2}[a-zA-Z0-9]+)*)*
digit		[0-9]
dec		{digit}+
char		'.'
punc		[\(\),:;]
real     [0-9]*\.[0-9]+([eE][+-]?[0-9]+)? 

%%
{ws}		{ ECHO; }
{comment}	{ ECHO; nextLine(); }
{comment2}	{ ECHO; nextLine(); }
{line}		{ ECHO; nextLine(); }
"+"		{ ECHO; return(ADDOP); }
"*"		{ ECHO; return(MULOP); }
"&"		{ ECHO; return(ANDOP); }
"<"		{ ECHO; return(RELOP); }
"=>"		{ ECHO; return(ARROW); }
"|"		{ ECHO; return(OROP); }
"!"		{ ECHO; return(NOTOP); }	
begin		{ ECHO; return(BEGIN_); }
case		{ ECHO; return(CASE); }
character	{ ECHO; return(CHARACTER); }
end		{ ECHO; return(END); }
endswitch	{ ECHO; return(ENDSWITCH); }
function	{ ECHO; return(FUNCTION); }
integer		{ ECHO; return(INTEGER); }
is		{ ECHO; return(IS); }
list		{ ECHO; return(LIST); }
of		{ ECHO; return(OF); }
others		{ ECHO; return(OTHERS); }
returns		{ ECHO; return(RETURNS); }
switch		{ ECHO; return(SWITCH); }
when		{ ECHO; return(WHEN); }
else		{ ECHO; return(ELSE); }
elsif		{ ECHO; return(ELSIF); }
endfold		{ ECHO; return(ENDFOLD); }
endif		{ ECHO; return(ENDIF); }
fold		{ ECHO; return(FOLD); }
if			{ ECHO; return(IF); }
left		{ ECHO; return(LEFT); }
real		{ ECHO; return(REAL); }
right		{ ECHO; return(RIGHT); }
then		{ ECHO; return(THEN); }

{id}		{ ECHO; return(IDENTIFIER);}
{dec}		{ ECHO; return(INT_LITERAL); }
{char}		{ ECHO; return(CHAR_LITERAL); }
{punc}		{ ECHO; return(yytext[0]); }
{real}		{ ECHO; return(REAL); }

\\b     { ECHO; return CHAR_LITERAL; }
\\t     { ECHO; return CHAR_LITERAL; }
\\n     { ECHO; return CHAR_LITERAL; }
\\r     { ECHO; return CHAR_LITERAL; }
\\f     { ECHO; return CHAR_LITERAL; }

.		{ ECHO; appendError(LEXICAL, yytext); }
%%