%{
#include<stdio.h>
%}
%%
"a".*"b" {printf("la chaine %s commence par a et se termine par b \n",yytext);}
[^a]*"a"?[^a]*"a"?[^a]* {printf("la chaine %s comporte au plus deaux a \n",yytext);}
.+ {printf("la chaine %s n'appartient a acune langage \n", yytext);}
%%
int main()
{
printf("Exo 3 TP3 \n");
yylex();
return 0;
}

