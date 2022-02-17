/* Compiler Theory and Design
   Project 2 */
/* Author: Kimberly Villatoro
   Date: 02/15/2022
   The second project involves modifying the syntactic analyzer for the attached compiler by adding 
   to the existing grammar. */

%{
#include <cstdio>
#include <string>

using namespace std;

#include "listing.h"
#include "tokens.h"

%}

%option noyywrap

ws		[ \t\r]+
comment		\-\-.*\n
comments 	\/\/.*\n
line		[\n]
id		[A-Za-z]([_]?[A-Za-z0-9])*
digit		[0-9]
int		{digit}+
punc		[\(\),:;]
real		[0-9]+([.])(([0-9]+)?((E|e)?)(\+|-)?([0-9]))*
%%

{ws}		{ ECHO; }
{comment}	{ ECHO; nextLine();}
{comments}	{ ECHO; nextLine(); }
{line}		{ ECHO; nextLine();}
"=>"		{ ECHO; return(ARROW); }
"<"		{ ECHO; return(RELOP); }
"<="		{ ECHO; return(RELOP); }
"<"		{ ECHO; return(RELOP); }
">"		{ ECHO; return(RELOP); }
">="		{ ECHO; return(RELOP); }
"="		{ ECHO; return(RELOP); }
"/="		{ ECHO; return(RELOP); }
"+"		{ ECHO; return(ADDOP); }
"-"		{ ECHO; return(ADDOP); }
"*"		{ ECHO; return(MULOP); }
"/"		{ ECHO; return(MULOP); }
begin		{ ECHO; return(BEGIN_); }
boolean		{ ECHO; return(BOOLEAN); }
end		{ ECHO; return(END); }
endreduce	{ ECHO; return(ENDREDUCE); }
function	{ ECHO; return(FUNCTION); }
integer		{ ECHO; return(INTEGER); }
is		{ ECHO; return(IS); }
reduce		{ ECHO; return REDUCE; }
returns		{ ECHO; return(RETURNS); }
and		{ ECHO; return(ANDOP); }
case		{ ECHO; return(CASE); }
else		{ ECHO; return(ELSE); }
endcase		{ ECHO; return(ENDCASE); }
endif		{ ECHO; return(ENDIF); }
if		{ ECHO; return(IF); }
others		{ ECHO; return(OTHERS); }
real 		{ ECHO; return(REAL); }
then		{ ECHO; return(THEN); }
when		{ ECHO; return(WHEN); }
or		{ ECHO; return(OROP); }
not		{ ECHO; return(NOTOP); }
rem		{ ECHO; return(REMOP); } 
"**"		{ ECHO; return(EXPOP); }
true		{ ECHO; return(BOOL_LITERAL); }
false		{ ECHO; return(BOOL_LITERAL); }
{id}		{ ECHO; return(IDENTIFIER);}
{int}		{ ECHO; return(INT_LITERAL); }
{punc}		{ ECHO; return(yytext[0]); }
{real}		{ ECHO; return(REAL_LITERAL); }
.		{ ECHO; appendError(LEXICAL, yytext); }
%%

