/*
    многострочный комментарий
    Первая программа
    на языке Dart
*/
// определение функции main
void main()
{
  // Тип_данных имя_переменной;
  String name = "Tom";
  print(name);          // вывод строки на консоль

  var name1 = "Bob";
  print(name1);

  dynamic name2 = "Cat";    //dynamic позволяет изменять тип переменной.
  print(name2);
  name2 =  45;
  print(name2);

  const name3 = "Sam";    //const должно быть определено при компиляции
  print(name3);

  final today = DateTime.now();   // final определяется во время выполнения.
  print(today);

}