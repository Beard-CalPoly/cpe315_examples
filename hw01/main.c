#include <stdio.h>

int setval(int limit);

int main(int argc, char* argv[])
{
  int main_val;

  main_val = setval(10);
  printf("Passed in 10 and got %d back\n", main_val);

  return 0;
}
