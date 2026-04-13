/*
Для работы с файловой системой и вообще системой ввода/ввода в языке Dart предназначен dart:io,
который определяет соответствующий функционал.
В частности, для работы с каталогами в этом пакете определен класс Directory
*/

import 'dart:io';

void main()
{
  print(Directory.current);       // Получить путь к текущей папке
  print(Directory.systemTemp);    // Каталог для временных файлов в текущей системе

  String dirname = "hello";
  CreateDir(dirname);   // Создание директории.

  GetInfoDir();         // Получение содержимого директории.

  FileExist();          // Проверка существования директории.

  RenameDir();          // Переименование директории.

  RemoveDir();          // Удаление директории.

  DirStats();           // Получение статистики по директории.
}

/// Создание директории.
/// Для создания директории применяется метод create().
/// [dirname] - Имя директории.
void CreateDir(String dirname) async
{
  var myDir = Directory(dirname);
  myDir.create();                 // Создание каталога
  print("Folder has been created");

  var myDirRec = Directory("hello1/temp");    // Если нужно создать каталог с подкаталогом
  myDirRec.create(recursive: true);           // дополнительно передаем пареметр
}


/// Получение содержимого директории.
void GetInfoDir() async
{
  var myDir = Directory("C:\\");
  try{
    // С помошью метода list() можно получить содержимое папки - вложенные папки и файлы
    await for (var entity in myDir.list()) {
      print(entity.path);
    }
  }
  catch(ex)
  {
    print(ex);
  }
}


/// Проверка существования директории.
/// Метод exists() возвращает true, если директория существует.
void FileExist() async
{
  print(await Directory("C:").exists());
  print(await Directory("somefolder").exists());
}


/// Переименование директории.
/// Для переименования директории применяется метод rename().
void RenameDir() async
{
  // создаем директорию "hello"
  var dir = await Directory("hello").create();
  // переименовываем ее в "work"
  var new_dir = await dir.rename("work");
  print(new_dir.path);  // work
}


/// Удаление директории.
/// Для удаления директории применяется метод delete().
void RemoveDir() async
{
  var dir = Directory("work");
  if(await dir.exists())
    {
      await dir.delete();
    }

  print("${dir.path} deleted");
}


/// Получение статистики по директории.
/// Для получение данных папки применяется метод stat().
void DirStats() async
{
  var dir = Directory.current;
  var stat = await dir.stat();
  print(dir.path);
  print("Accessed datetime: ${stat.accessed}");
  print("Modified datetime: ${stat.modified}");
  print("Size: ${stat.size}");
}

