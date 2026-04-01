// Условные конструкции.
void main()
{
  const int num1 = 8;
  const int num2 = 5;

  // If - else
  if(num1 > num2) {
    print("Первое число больше второго");
  }
  else if(num1 < num2) {
    print("Первое число меньше второго");
  }
  else {
    print("Числа равны");
  }

  // Switch case
  const int num = 4;
  switch(num){

    case 1:
      print("число равно 1");
    case 2:
      print("число равно 2");
    case 3:
      print("число равно 3");
    default:
      print("число не равно 1, 2, 3");
  }

  //  Тернарный оператор
  const int a = 5;
  const int b = 8 ;
  int c = a > b ? a - b : a + b;   // тернарный оператор
  print(c);
}
