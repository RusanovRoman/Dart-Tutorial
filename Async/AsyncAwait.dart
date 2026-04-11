/*
Операторы async и await облегчают написание асинхронного кода.
Применение async-await позволяет уйти от прямого использования Future API,
в частности, его методов then и catchError.
 */

/*
// Рассмотрим пример работы через Future API без async и await:
void doWork()
{
  print("Начало функции doWork");
  Future<String> messageFuture = getMessage();

  messageFuture.then((message) => print("Получено сообщение: $message"));

  print("Завершение функции doWork");
}

Future<String> getMessage()
{
  // имитация долгой работы с помощью задержки в 3 секунды
  return Future.delayed(Duration(seconds: 3), () => "Hello Dart");
}

void main ()
{
  doWork();

  print("Выполнение функции main");
}
 */

/*
// Тот же код, но с использованием async await
Future<void> doWork() async
{
  print("Начало функции doWork");

  String message = await getMessage();
  print("Получено сообщение: $message");
  print("Завершение функции doWork");
}

Future<String> getMessage()
{
  // имитация долгой работы с помощью задержки в 3 секунды
  return Future.delayed(Duration(seconds: 3), () => "Hello Dart");
}

void main ()
{
  doWork();
  print("Выполнение функции main");
}
 */

/*
// Ассинхронная функция main
Future<String> getMessage()
{
  // имитация долгой работы с помощью задержки в 3 секунды
  return Future.delayed(Duration(seconds: 3), () => "Hello Dart");
}

void main() async
{
  print("Начало функции main");
  String message = await getMessage();
  print("Получено сообщение: $message");
  print("Завершение функции main");
}
 */

// Обработка ошибок в асинхронных методах
Future<void> doWork() async
{
  print("Начало функции doWork");
  try{
    String message = await getMessage();
    print("Получено сообщение: $message");
  }
  catch(e){
    print("Произошла ошибка: $e");
  }
  print("Завершение функции doWork");
}

Future<String> getMessage()
{
  // с помощью оператора throw имитируем возникновение ошибки
  return Future.delayed(Duration(seconds: 3), () => throw "Сервер не отвечает");
}

void main ()
{
  doWork();
  print("Выполнение функции main");
}