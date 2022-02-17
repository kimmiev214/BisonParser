/* Compiler Theory and Design
   Project 2 */
/* Author: Kimberly Villatoro
   Date: 02/15/2022
   The second project involves modifying the syntactic analyzer for the attached compiler by adding 
   to the existing grammar. */

// This file contains the function prototypes for the functions that produce the // compilation listing

enum ErrorCategories {LEXICAL, SYNTAX, GENERAL_SEMANTIC, DUPLICATE_IDENTIFIER,
	UNDECLARED};

void firstLine();
void nextLine();
int lastLine();
void appendError(ErrorCategories errorCategory, string message);

