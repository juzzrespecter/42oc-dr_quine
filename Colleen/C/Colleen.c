#include <stdio.h>

/* Comment outside program definition */

void additional_function()
{
    char *s1 = "#include <stdio.h>%c%c/* Comment outside program definition */%c%cvoid additional_function()%c{%c    char *s1 = %c%s%c;%c    char *s2 = %c%s%c;%c    char *s3 = %c%s%c;%c";
    char *s2 = "%c    printf(s1,10,10,10,10,10,10,34,s1,34,10,34,s2,34,10,34,s3,34,10);%c    printf(s2,10,10,10,10,10,10);%c    printf(s3,10,10,10,10,10,10);%c}%c%c";
    char *s3 = "int main()%c{%c    /* Comment inside main func. */%c    additional_function();%c    return (0);%c}%c";

    printf(s1,10,10,10,10,10,10,34,s1,34,10,34,s2,34,10,34,s3,34,10);
    printf(s2,10,10,10,10,10,10);
    printf(s3,10,10,10,10,10,10);
}

int main()
{
    /* Comment inside main func. */
    additional_function();
    return (0);
}
