%{
    #include <stdio.h>
    #include <stdlib.h>
%}

%%
S   : 'a' S 'b'
    |
    ;
%%

int yywrap() {}

int main() {
    printf("Enter anbn string: ");
    yyparse();
    printf("Valid anbn\n");
}

int yyerror() {
    printf("Invalid anbn\n");
    exit(0);
}