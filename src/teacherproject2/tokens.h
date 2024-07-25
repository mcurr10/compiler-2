/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     IDENTIFIER = 258,
     INT_LITERAL = 259,
     REAL_LITERAL = 260,
     CHAR_LITERAL = 261,
     ADDOP = 262,
     MULOP = 263,
     REMOP = 264,
     EXPOP = 265,
     NEGOP = 266,
     RELOP = 267,
     ANDOP = 268,
     OROP = 269,
     NOTOP = 270,
     ARROW = 271,
     BEGIN_ = 272,
     CASE = 273,
     CHARACTER = 274,
     ELSE = 275,
     ELSIF = 276,
     END = 277,
     ENDIF = 278,
     ENDFOLD = 279,
     ENDSWITCH = 280,
     FOLD = 281,
     FUNCTION = 282,
     IF = 283,
     INTEGER = 284,
     IS = 285,
     LEFT = 286,
     LIST = 287,
     OF = 288,
     OTHERS = 289,
     REAL = 290,
     RETURNS = 291,
     RIGHT = 292,
     SWITCH = 293,
     THEN = 294,
     WHEN = 295
   };
#endif
/* Tokens.  */
#define IDENTIFIER 258
#define INT_LITERAL 259
#define REAL_LITERAL 260
#define CHAR_LITERAL 261
#define ADDOP 262
#define MULOP 263
#define REMOP 264
#define EXPOP 265
#define NEGOP 266
#define RELOP 267
#define ANDOP 268
#define OROP 269
#define NOTOP 270
#define ARROW 271
#define BEGIN_ 272
#define CASE 273
#define CHARACTER 274
#define ELSE 275
#define ELSIF 276
#define END 277
#define ENDIF 278
#define ENDFOLD 279
#define ENDSWITCH 280
#define FOLD 281
#define FUNCTION 282
#define IF 283
#define INTEGER 284
#define IS 285
#define LEFT 286
#define LIST 287
#define OF 288
#define OTHERS 289
#define REAL 290
#define RETURNS 291
#define RIGHT 292
#define SWITCH 293
#define THEN 294
#define WHEN 295




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

