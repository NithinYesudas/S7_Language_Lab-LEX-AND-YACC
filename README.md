# To Compile and Run Lex Programs
1. lex sample.l
2. gcc lex.yy.c
3. ./a.out

# To compile and Rune YACC Programs
1. lex sample.l
2. yacc -d sample.y
3. gcc lex.yy.c y.tab.c -w
4. ./a.out
