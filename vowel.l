%{
#include <stdio.h>
%}

%%
[AEIOUaeiou] { printf("Vowel: %s\n", yytext); }
. ;
%%

int yywrap()
{
    return 1;
}

int main()
{
    printf("Enter Text: ");
    yylex();
    return 0;
}