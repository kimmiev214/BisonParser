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
     BOOL_LITERAL = 261,
     REAL = 262,
     EXPOP = 263,
     ADDOP = 264,
     MULOP = 265,
     RELOP = 266,
     ANDOP = 267,
     OROP = 268,
     NOTOP = 269,
     REMOP = 270,
     BEGIN_ = 271,
     BOOLEAN = 272,
     END = 273,
     ENDREDUCE = 274,
     FUNCTION = 275,
     INTEGER = 276,
     IS = 277,
     REDUCE = 278,
     RETURNS = 279,
     THEN = 280,
     WHEN = 281,
     ENDCASE = 282,
     CASE = 283,
     ENDIF = 284,
     IF = 285,
     ARROW = 286,
     ELSE = 287,
     OTHERS = 288
   };
#endif
/* Tokens.  */
#define IDENTIFIER 258
#define INT_LITERAL 259
#define REAL_LITERAL 260
#define BOOL_LITERAL 261
#define REAL 262
#define EXPOP 263
#define ADDOP 264
#define MULOP 265
#define RELOP 266
#define ANDOP 267
#define OROP 268
#define NOTOP 269
#define REMOP 270
#define BEGIN_ 271
#define BOOLEAN 272
#define END 273
#define ENDREDUCE 274
#define FUNCTION 275
#define INTEGER 276
#define IS 277
#define REDUCE 278
#define RETURNS 279
#define THEN 280
#define WHEN 281
#define ENDCASE 282
#define CASE 283
#define ENDIF 284
#define IF 285
#define ARROW 286
#define ELSE 287
#define OTHERS 288




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

