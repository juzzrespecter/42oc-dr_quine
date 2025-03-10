#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
char data[] = "#include <fcntl.h>%1$c#include <stdio.h>%1$c#include <unistd.h>%1$cchar data[] = %2$c%3$s%2$c;%1$cchar hex[] = {0x67,0x63,0x63,0x20,0x2d,0x6f,0x20,0,0,0,0,0,0,0,0x20,0,0,0,0,0,0,0,0x2e,0x63,0,0x2e,0x2f,0,0,0,0,0,0,0,0};%1$cchar* a[] = {hex + 25,0};%1$cchar fn[] = %2$cSully_#.c%2$c;%1$cint main(int argc, char** argv, char **envp)%1$c{%1$c  (void)argc, (void)argv;%1$c  int i = %4$d;%1$c%1$c  if (i > 0)%1$c  {%1$c    if (__FILE__[5] == '_')%1$c      i -= 1;%1$c    fn[6] = i + 48;%1$c    for (int i = 0; i < 7; i++)%1$c      *(hex+i+7) = *(hex+i+15) = *(hex+i+27) = fn[i];%1$c    int f = open(hex+15,0101,420);%1$c    dprintf(f,data,10,34,data,i);%1$c    FILE* e = popen(hex,%2$cr%2$c);%1$c    while (pclose(e) == -1) {}%1$c    execve(hex + 25,a,envp);%1$c  }%1$c}";
char hex[] = {0x67,0x63,0x63,0x20,0x2d,0x6f,0x20,0,0,0,0,0,0,0,0x20,0,0,0,0,0,0,0,0x2e,0x63,0,0x2e,0x2f,0,0,0,0,0,0,0,0};
char* a[] = {hex+25,0};
char fn[] = {0x53,0x75,0x6c,0x6c,0x79,0x5f,0x23,0x2e,0x63,0};
int main(int argc, char** argv, char **envp)
{
  (void)argc, (void)argv;
  int i = 5;

  if (i > 0)
  {
    if (__FILE__[5] == '_')
      i -= 1;
    fn[6] = i + 48;
    for (int i = 0; i < 7; i++)
      *(hex+i+7) = *(hex+i+15) = *(hex+i+27) = fn[i];
    int f = open(hex+15,0101,420);
    dprintf(f,data,10,34,data,i);
    FILE* e = popen(hex,"r");
    while (pclose(e) == -1) {}
    execve(hex + 25,a,envp);
  }
}