/*
Для работы с файлами библиотека dart:io определяет класс File,
а для работы с папками - класс Directory
Для создания объекта класс File предоставляет фабричный конструктор,
в который передается в качестве параметра путь к файлу.
*/

import 'dart:io';       // для работы  с File

/// Точка входа в приложении.
void main () async
{
  File file = File("hello.txt");
  print(file.path);           // hello.txt
  print(file.absolute.path);  // C:\Users\Roman\StudioProjects\Dart Tutorials\Filesystem\hello.txt
  
  CreateFile("hello.txt");    // Создание файла.

  CopyFile();       // Копирование файла.

  // Проверка существования файла.
  print(await File("hello.txt").exists());
  print(await File("somefile.dat").exists());

  RenameFile();   // Переименование файла.

  DeleteFile();   // Удаление файла.

  FileStat();   // Получение статистики по файлу.
}


/// Создание файла.
/// Для создания файла применяется метод create().
/// [filename] - Имя файла.
void CreateFile(String filename) async
{
  File file = File(filename);
  await file.create();
  print("File has been created");
}

/// Копирование файла.
/// Для копирования файла применяется функция copy().
void CopyFile() async
{
  // Сначала создаем файл "hello.txt".
  File file = await File("hello.txt").create();
  // Затем копируем его в "work.txt".
  File fileCopy = await file.copy("work.txt");

  print("File ${file.path} has been copied to ${fileCopy.path}");
}

/// Переименование файла.
/// Для переименования файла применяется метод rename().
void RenameFile() async
{
  // создаем файл "hello.txt"
  var file = await File("hello.txt").create();
  // переименовываем его в "hello12345.txt"
  var new_file = await file.rename("hello12345.txt");
  print("File ${file.path} renamed to ${new_file.path}");
}

/// Удаление файла.
/// Для удаления файла применяется метод delete().
void DeleteFile() async
{
  var file = File("work.txt");
  // если файл существует
  if(await file.exists()){
    await file.delete();
    print("${file.path} deleted");
  }
}

/// Получение статистики по файлу.
/// Для получение данных папки применяется метод stat().
void FileStat() async
{
  final file = await File("hello.txt").create();
  final stat = await file.stat();
  print(file.path);
  print("Accessed datetime: ${stat.accessed}");
  print("Modified datetime: ${stat.modified}");
  print("Size: ${stat.size}");
}
