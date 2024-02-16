#include <stdio.h>

int main() {
    char *s = "#include <stdio.h>\n\nint main() {\n     char *s = %s;\n\n   printf(\"%s\\n\", s);\n    return 0;\n}\n";

    printf("%s\n", s);
    return 0;
}