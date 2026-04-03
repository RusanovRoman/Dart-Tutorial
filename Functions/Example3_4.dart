// Возвращение результата из функции.

void main() {
  int result = sum(5,7);
  print(result);    // 12

  int res = sumArrow(4, 10);
  print(res);   // 14

  checkAge(22);   // Ваш возраст: 22
  checkAge(222);  // Недействительный возраст
}

int sum(int a, int b) {
  return a + b;
}

int sumArrow(int a, int b) => a+b;

// Если функция не имеет оператора return, то в тело функции
// неявно добавляется инструкция return null;
void hello() {
  print("Hello!");
  return null;
}

// Оператор return не только возвращает некоторый результат из функции.
// Кроме того, return осуществляет выход из функции.
void checkAge(int age) {
  if(age < 1 || age > 110)
  {
    print("Недействительный возраст");
    return; // выходим из функции
  }
  print("Ваш возраст: $age");
}