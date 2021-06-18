
int add(int a, int b)
{
  return a+b;
}

extern "C" 
{
  int kmain()
  {
    int number;
    number = add(12, 3);
    return (number == 15) ? 0 : 1; // return 0 on success, 1 on failure.
  }
}