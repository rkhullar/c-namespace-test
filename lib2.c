static int test(int x)
{
  return 2;
}

extern int test2(void)
{
  return test(0);
}