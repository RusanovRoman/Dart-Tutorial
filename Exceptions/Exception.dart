// В конструкции try..catch мы можем обрабатывать исключения и ошибки определенного типа.
// Для этого применяется оператор on:
void main () {

  try {
    int x = 9;
    int y = 0;
    int z = x ~/ y;
    print(z);
  }
  on IntegerDivisionByZeroException catch(e, s) {
    print("Обработка исключения $e");
    print("Стек $s");
  }
  on FormatException {
    print("Обработка исключения FormatException");
  }
  print("Завершение программы");

}