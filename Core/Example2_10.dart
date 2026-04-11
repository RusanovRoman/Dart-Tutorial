import "dart:io"; // необходимо для использования функции stdout.write и stdin
 // Консольный ввод и вывод
void main()
{
  // Выводим подсказку для пользователя
  stdout.write("Введите ваше имя: ");

  // Читаем строку из консоли
  String? name = stdin.readLineSync();

  if((name != null) && (name != ""))
    print("Привет, $name!");
  else
    print("Ошибка ввода");
}
