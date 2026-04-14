/*
Для работы с файлами Dart можно использовать потоки. Поток (stream) представляет абстракцию,
которая применяется для передачи набора данных. Например, если надо считать данные с файла,
приложение можно использовать файловый поток для взаимодействия с файлом и получения от него данных.
 */

import 'dart:io';
import 'dart:convert';

void main() async
{
  WritetoStream();    // Запись в поток.

  ReadFromStream();   // Чтение из потока.
}

class Person
{
  String name;
  int age;
  Person(this.name, this.age);
  void display() => print("Name: $name \tAge: $age");
  @override
  toString() => "{name: $name, age: $age}";
}

/// Запись в поток.
/// Поток для записи представляет тип IOSink.
void WritetoStream() async
{
  final file = File("file.txt");
  var sink = file.openWrite();
  //var sink = file.openWrite(mode: FileMode.append);
  sink.write("Hello World!\n");
  Person tom = Person("Tom", 38);   // Создание объекта класса.
  sink.write(tom);     // Запись данных в потоке.
  // закрываем IOSink и освобождаем все ресурсы системы
  await sink.close();
  print("File has been written");
}

/// Чтение из потока.
/// Для чтения данных применяется поток Stream<List<int>>.
void ReadFromStream() async
{
  final file = File("file.txt");
  final stream = file.openRead();
  // преобразуем в строку и выводим на консоль
  stream.listen(
      (data) => print(utf8.decode(data)),     // вывод данных в читаемом формате
      onError: (error) {print(error);},       // срабатывает при ошибке
      onDone: () { print("End of reading");}, // срабатывает при завершении
      cancelOnError: true    // прекращаем работу потока при возникновении ошибки
  );
}