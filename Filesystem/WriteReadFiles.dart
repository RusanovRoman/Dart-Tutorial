import 'dart:io';
import 'dart:convert';    // для типа utf8

void main () async
{
  WriteStrToFile();    // Запись строки в файл.

  ReadStrFromFile();   // Чтение текстовых файлов.

  WriteBytesToFile();   // Запись бинарных файлов.

  ReadBytesFromFile();  // Чтение бинарных файлов.
}

/// Запись строки в файл.
/// Для асинхронной записи текстовых файлов применяется метод writeAsString().
/// Для синхронной записи применяется метод writeAsStringSync().
void WriteStrToFile() async
{
  String text = "Hello World!\n";  // текст для записи
  File file = File("hello.txt");
  await file.writeAsString(text);
  print("File has been written");

  // дозапись
  await file.writeAsString(text, mode: FileMode.append);
  print("Text has been written");
}

/// Чтение текстовых файлов.
/// Для асинхронного построчного чтения применяется метод readAsLines().
/// Для синхронного чтения применяется метод readAsLinesSync().
void ReadStrFromFile() async
{
  //String text = "Hello World!\n";  // текст для записи
  File file = File("hello.txt");
  var lines = await file.readAsLines();
  for(final line in lines){
    print(line);
  }

  // Для асинхронного чтения текстовых файлов в одну строку
  // применяется метод readAsString().
  String content = await file.readAsString();
  print(content);
}

/// Запись бинарных файлов.
/// Для записи байтов в асинхронном режиме применяется метод writeAsBytes().
/// Для записи байтов в синхронном режиме применяется метод writeAsBytesSync().
void WriteBytesToFile() async
{
  String message = "Hello World!";
  final file = File("content.bin");
  // Конвертируем строку в набор байтов.
  List<int> bytes = utf8.encode(message);
  await file.writeAsBytes(bytes);
  print("File has been written");
}

/// Чтение бинарных файлов.
/// Для чтения бинарных файлов в асинхронном режиме применяется метод readAsBytes().
/// Для синхронного чтения применяется метод readAsBytesSync().
void ReadBytesFromFile() async
{
  final file = File("content.bin");
  List<int> content = await file.readAsBytes();
  // Конвертируем из набора байтов в строку.
  String message = utf8.decode(content);
  print(message);
}

