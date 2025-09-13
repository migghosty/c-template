#include <stdio.h>
#include <mm_util.h>

int main()
{
   int x;
   int y;
   int res;
   bool a_file_exist;

   x=5;
   y=10;
   res=add(x,y);

   printf("res=%d\n", res);

   a_file_exist = mm_file_exists("b");
   printf("a file exists=%d\n", a_file_exist);

   return 0;
}
