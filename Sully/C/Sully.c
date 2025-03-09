#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
char filename[] = "Sully_@.c";
char data[] = "#include <fcntl.h>%1$c#include <stdio.h>%1$c#include <unistd.h>%1$cchar filename[] = %2$cSully_@.c%2$c;%1$cchar data[] = %2$c%3$s%2$c;%1$cchar hex[] = {0x67,0x63,0x63,0x20,0x2d,0x6f,0x20,0,0,0,0,0,0,0,0x20,0,0,0,0,0,0,0,0x2e,0x63,0,0x2e,0x2f,0,0,0,0,0,0,0,0};%1$cint main()%1$c{%1$c  int i = 5;%1$c  int f;%1$c  char* a[] = {hex + 25,0};%1$c%1$c  if (i > 0)%1$c  {%1$c    i -=1;%1$c    filename[6] = i + 48;%1$c    data[292] = i + 48;%1$c    f = open(filename,01,420);%1$c    dprintf(f,data,10,34,data);%1$c    for (int i = 0; i < 7; i++)%1$c    {%1$c      *(hex + i + 7) = filename[i];%1$c      *(hex + i + 15) = filename[i];%1$c      *(hex + i + 27) = filename[i];%1$c    }%1$c    popen(hex,%2$cr%2$c);%1$c    execve(hex + 25,a,0);%1$c  }%1$c}";
char hex[] = {0x67,0x63,0x63,0x20,0x2d,0x6f,0x20,0,0,0,0,0,0,0,0x20,0,0,0,0,0,0,0,0x2e,0x63,0,0x2e,0x2f,0,0,0,0,0,0,0,0};
int main()
{
  int i = 5;
  int f;
  char* a[] = {hex + 25,0};

  if (i > 0)
  {
    i -=1;
    filename[6] = i + 48;
    data[292] = i + 48;
    f = open(filename,0101,420);
    dprintf(f,data,10,34,data);
    for (int i = 0; i < 7; i++)
    {
      *(hex + i + 7) = filename[i];
      *(hex + i + 15) = filename[i];
      *(hex + i + 27) = filename[i];
    }
    popen(hex,"r");
    execve(hex + 25,a,0);
  }
}