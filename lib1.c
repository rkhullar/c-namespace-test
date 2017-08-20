static int test(void)
{
  return 1;
}

extern int test1(void)
{
  return test();
}