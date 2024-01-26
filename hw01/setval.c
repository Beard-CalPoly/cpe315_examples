void myfunc(int *val, int limit);

int setval(int limit)
{
  int val;
  val = 0;
  while(val < limit)
  {
    myfunc(&val, limit);
  }
  return val;
}


