/* Compiler Theory and Design
   Project 2 */
/* Author: Kimberly Villatoro
   Date: 02/15/2022
   The second project involves modifying the syntactic analyzer for the attached compiler by adding 
   to the existing grammar. */

#include <cstdio>
#include <string>

using namespace std;

#include "listing.h"

static int lineNumber;
static string error = "";
static int totalErrors = 0;

static void displayErrors();

void firstLine()
{
	lineNumber = 1;
	printf("\n%4d  ",lineNumber);
}

void nextLine()
{
	displayErrors();
	lineNumber++;
	printf("%4d  ",lineNumber);
}

int lastLine()
{
	printf("\r");
	displayErrors();
	printf("     \n");
	return totalErrors;
}
    
void appendError(ErrorCategories errorCategory, string message)
{
	string messages[] = { "Lexical Error, Invalid Character ", "",
		"Semantic Error, ", "Semantic Error, Duplicate Identifier: ",
		"Semantic Error, Undeclared " };

	error = messages[errorCategory] + message;
	totalErrors++;
}

void displayErrors()
{
	if (error != "")
		printf("%s\n", error.c_str());
	error = "";
}
