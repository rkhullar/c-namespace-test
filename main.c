#include <stdio.h>
#include "lib1-w.h"
#include "lib2-w.h"

int main()
{
  printf("hello world\n");
  printf("%d\n", lib1_test1());
  printf("%d\n", lib2_test2());
  return 0;
}
