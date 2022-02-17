/* Compiler Theory and Design
   Project 2 */
/* Author: Kimberly Villatoro
   Date: 02/15/2022
   The second project involves modifying the syntactic analyzer for the attached compiler by adding 
   to the existing grammar. */


%{

#include <string>

using namespace std;

#include "listing.h"

int yylex();
void yyerror(const char* message);

int errors = 0;

%}

%error-verbose

%token IDENTIFIER
%token INT_LITERAL
%token REAL_LITERAL
%token BOOL_LITERAL
%token REAL

%token EXPOP ADDOP MULOP RELOP ANDOP OROP NOTOP REMOP

%token BEGIN_ BOOLEAN END ENDREDUCE FUNCTION INTEGER IS REDUCE RETURNS THEN WHEN
%token ENDCASE CASE ENDIF IF ARROW ELSE OTHERS 

%%

function:	
	function_header optional_variables body ;

function_header:	
	FUNCTION IDENTIFIER parameters RETURNS type ';' |


optional_variables:
	optional_variables optional_variable |
	/*empty*/ ;

optional_variable:
	variable 
	;

variable:
	IDENTIFIER ':' type IS statement_ |
	error ':' ;

parameters:
	parameters parameter |
	parameters ',' parameter | 
	/*empty*/ ;
 
parameter:
	IDENTIFIER ':' type |
	error ':' ;

type:
	INTEGER | REAL | REAL_LITERAL | BOOLEAN ;

body:
	BEGIN_ statement_ END ';' ;
    
statement_:
	statement ';' |
	error ';' ;
	
statement:
	expression |
	REDUCE operator reductions ENDREDUCE ; |
	IF expression THEN statement_ ELSE statement_ ENDIF ; |
	CASE expression IS cases OTHERS ARROW statement_ ENDCASE ;	
 
operator:
	ADDOP | EXPOP | REMOP | NOTOP |
	MULOP ;

cases:
	cases case |
	/*empty*/ ;

case:
  | WHEN case INT_LITERAL ARROW statement_

reductions:
	reductions statement_ |
	;
	    
expression:
	expression OROP and |
	and ;

and: 
	and ANDOP relation |
	relation ;

relation:
	relation RELOP term |
	term;

term:
	term ADDOP factor |
	factor ;
      
factor:
	factor MULOP exponentiation | 
	factor REMOP exponentiation | 
	exponentiation ;

exponentiation:
	not | 
	exponentiation EXPOP not; 

not: 
	NOTOP not |
	primary ;	

primary:
	'(' expression ')' |
	INT_LITERAL | REAL_LITERAL | BOOL_LITERAL |
	IDENTIFIER ;
    
%%

void yyerror(const char* message)
{
	appendError(SYNTAX, message);
}

int main(int argc, char *argv[])    
{
	firstLine();
	yyparse();
	lastLine();
	return 0;
} 
