// Анонимные и вложенные функции
// Анонимные функции похожи на обычные функции, но они не имеют названия.
void main() {
  Function sum = (a, b) => a + b;
  print(sum(4, 5));       // 9
  print(sum(6, 5));       // 11

  operation(10, 4, (a, b)=>a + b);    // 14
  operation(10, 4, (a,b)=>a - b);     // 6
  operation(10, 4, (a, b) => a * b);  // 40

  Function action = select(1);  // сложение
  print(action(8, 5)); // 13

  action = select(2);  // вычитание
  print(action(8, 5)); // 3

  action = select(3);  // умножение
  print(action(8, 5)); // 40

  // В Dart функции могут быть вложенными в другие функции.
  void showMessage() {
    void hello(){
      print("Hello!");
    }

    hello();
    hello();
  }

  showMessage();
}

void operation(int a, int b, Function op)
{
  print(op(a, b));
}

Function select(int choice)
{
  // возвращаем нужную функцию в зависимости от choice
  switch (choice)
  {
    case 2:
      return (a, b) => a - b;
    case 3:
      return (a, b) => a * b;
    default:
      return (a, b) => a + b;
  }
}