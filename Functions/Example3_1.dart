// Определение функций
void main()
{
  hello();
  helloArrow();
}
/*
[тип] имя_функции(параметры)
{
    выполняемые_выражения
}
 */
void hello()
{
  print("Hello world!");
}

// Стрелочная функция
//[тип] имя_функции(параметры) => выполняемое_выражение
void helloArrow() => print("Hello world!");