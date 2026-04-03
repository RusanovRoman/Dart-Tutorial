// Функция как объект

void main() {
  // В явном виде.
  Function func = hello;
  func();     // Hello!
  func = bye;
  func();     // Goodbye!

  // Через функцию.
  showMessage(hello);
  showMessage(bye);

  // Через функцию с параметрами.
  operation(5, 4, sum);       // 9
  operation(5, 4, subtract);  // 1
  operation(5, 4, multiply);  // 20

  // Функция как результат другой функции
  Function message = getMessage(11);
  message();
  message = getMessage(15);
  message();

  // Сначала выбераем необходимую функцию, затем вызываем ее с параметрами.
  Function action = select(1);  // получаем функцию sum
  print(action(8, 5)); // 13

  action = select(2);  // получаем функцию subtract
  print(action(8, 5)); // 3

  action = select(3);  // получаем функцию multiply
  print(action(8, 5)); // 40
}

// Функции могут выступать в качестве параметров других функций
void showMessage(Function func) {
  func();     // вызываем переданную функцию
}

void hello() => print("Hello!");
void bye() => print("Goodbye!");


void operation(int a, int b, Function func) {
  int result = func(a, b);     // вызываем переданную функцию
  print(result);
}

Function select(int choice)
{
  // возвращаем нужную функцию в зависимости от choice
  switch (choice)
  {
    case 2:
      return subtract;
    case 3:
      return multiply;
    default:
      return sum;
  }
}

int sum(int a, int b) => a+ b;
int subtract(int a, int b) => a - b;
int multiply(int a, int b) => a * b;


Function getMessage(int hour) {
  if(hour < 12)
    return morning;
  else
    return evening;
}
void morning() => print("Good morning!");
void evening() => print("Good evening!");