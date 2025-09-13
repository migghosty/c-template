#include <stdio.h>
#include <mm_util.h>

int add(int x, int y)
{
   return x+y;
}

/*********************************
 * FUNCTION: mm_file_exists
 *
 * DESCRIPTION:
 *    Checks if a file exists
 *
 * INPUT:
 *    filename - path to file
 *
 * RETURN:
 *    true if the string pointed to by filename exists; otherwise false
 ********************************/
bool mm_file_exists(const char *filename)
{
   FILE *fp;

   fp = fopen(filename, "r");

   if (NULL != fp) {
      fclose(fp);
      return true;
   }

   return false;
}

