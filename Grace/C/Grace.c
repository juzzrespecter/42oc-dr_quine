/*
  This is probably a comment
*/
# include <stdio.h>
# include <fcntl.h>

# define CODE "/*%1$c  This is probably a comment%1$c*/%1$c# include <stdio.h>%1$c# include <fcntl.h>%1$c%1$c# define CODE %2$c%3$s%2$c%1$c# define PRINT(x,y,z,u) dprintf(u,x,y,z,x)%1$c# define FT() int main(){int f=open(%2$cGrace_kid.c%2$c,65,420);PRINT(CODE,0xa,0x22,f);}%1$cFT()"
# define PRINT(x,y,z,u) dprintf(u,x,y,z,x)
# define FT() int main(){int f=open("Grace_kid.c",65,420);PRINT(CODE,0xa,0x22,f);}
FT()