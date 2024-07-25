/* CMSC 430 Compiler Theory and Design
   Project 2 Complete
   UMGC
   Project 2 Parser */


%{

#include <string>

using namespace std;

#include "listing.h"

int yylex();
void yyerror(const char* message);

%}


%token IDENTIFIER INT_LITERAL REAL_LITERAL CHAR_LITERAL

%token ADDOP MULOP REMOP EXPOP NEGOP RELOP ANDOP OROP NOTOP ARROW

%token BEGIN_ CASE CHARACTER ELSE ELSIF END ENDIF ENDFOLD ENDSWITCH FOLD
	FUNCTION IF INTEGER IS LEFT LIST OF OTHERS REAL RETURNS RIGHT
	SWITCH THEN WHEN

%%

function:	
	function_header_ variables body ;
	
function_header_:
	function_header ';' |
	error ';'  ;
		
function_header:	
	FUNCTION IDENTIFIER optional_parameters RETURNS type ;

optional_parameters:
	parameters |
	/* empty production */ /* This replaces %empty */
	; 
	
parameters:
	parameter ',' parameters |
	parameter ;
	
parameter:
	IDENTIFIER ':' type ;

type:
	INTEGER |
	REAL |
	CHARACTER ;
	
variables:
	variable_ variables |
	/* empty production */ /* This replaces %empty */
	; 
    
variable_:
	variable ';'|
	error ';' ;
	
variable:	
	IDENTIFIER ':' type IS statement |
	IDENTIFIER ':' LIST OF type IS list ;

list:
	'(' expressions ')' ;

expressions:
	expressions ',' expression| 
	expression ;

body:
	BEGIN_ statement_ END ';' ;
    
statement_:
	statement ';' |
	error ';' ;
	
statement:
	expression |
	WHEN condition ',' expression ':' expression |
	SWITCH expression IS cases OTHERS ARROW statement_ ENDSWITCH | 
	IF condition THEN statement_ elsifs ELSE statement_ ENDIF |
	FOLD direction operator list_choice ENDFOLD ;

elsifs:
	elsif elsifs |
	/* empty production */ /* This replaces %empty */
	; 

elsif:
	ELSIF condition THEN statement_ ;

cases:
	cases case_ |
	/* empty production */ /* This replaces %empty */
	; 
	
case_:	case ';' |
	error ';'  ;

case:
	CASE INT_LITERAL ARROW statement ; 

direction:
	LEFT |
	RIGHT ;
	
operator:
	ADDOP |
	MULOP |
	EXPOP ;
	
list_choice:
	list |
	IDENTIFIER  ;

condition:
	condition OROP conjunct |
	conjunct ;

conjunct:
	conjunct ANDOP logical_negation |
	logical_negation ;

logical_negation:
	NOTOP logical_negation |
	relation ;

relation:
	'(' condition ')' |
	expression RELOP expression ;
	
expression:
	expression ADDOP term |
	term ;
      
term:
	term MULOP factor |
	term REMOP factor |
	factor ;

factor:
	arithmetic_negation EXPOP factor |
	arithmetic_negation ;

arithmetic_negation:
	NEGOP arithmetic_negation |
	primary ;

primary:
	'(' expression ')' |
	INT_LITERAL | 
	REAL_LITERAL |
	CHAR_LITERAL |
	IDENTIFIER '(' expression ')' |
	IDENTIFIER ;

%%

void yyerror(const char* message) {
	appendError(SYNTAX, message);
}

int main(int argc, char *argv[]) {
	firstLine();
	yyparse();
	lastLine();
	return 0;
} 