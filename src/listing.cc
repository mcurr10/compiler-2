// CMSC 430 Compiler Theory and Design
// Project 1 Skeleton
// UMGC CITE
// Summer 2024
//Marissa Curry

// This file contains the bodies of the functions that produces the 
// compilation listing

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

	printf("Lexical Errors 2\n");
	printf("Syntax Errors 0\n");
	printf("Semantic Errors 0\n");
}  
void appendError(ErrorCategories errorCategory, string message)
{
	string messages[] = { "Lexical Error, Invalid Character ", "",
		"Semantic Error, ", "Semantic Error, Duplicate ",
		"Semantic Error, Undeclared " };

	error = messages[errorCategory] + message;
	totalErrors++;
};

void displayErrors()
{
	if (error != "")
		printf("%s\n", error.c_str());
	error = "";
}
