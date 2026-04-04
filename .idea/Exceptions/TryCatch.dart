// Рассмотрим пример деления на 0.
void main () {

  try {
    int x = 9;
    int y = 0;
    int z = x ~/ y;

    print(z);
  }
  catch(e, s) {
    print("Обработка исключения $e");
    print("Стек $s");
  }
  finally {
    print("Выполнение блока finally");
  }
  print("Завершение программы");
}