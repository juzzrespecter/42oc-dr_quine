#include <stdio.h>
/*
  Comment outside program definition
*/
void additional_function()
{
    char *s = "#include <stdio.h>%1$c/*%1$c  Comment outside program definition%1$c*/%1$cvoid additional_function()%1$c{%1$c    char *s = %2$c%3$s%2$c;%1$c    printf(s,10,'%2$c',s);%1$c}%1$c%1$cint main()%1$c{%1$c    /*%1$c      Comment inside main func.%1$c    */%1$c    additional_function();%1$c    return (0);%1$c}%1$c";
    printf(s,10,'"',s);
}

int main()
{
    /*
      Comment inside main func.
    */
    additional_function();
    return (0);
}
