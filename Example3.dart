void main()
{
  // Если необходимо, чтобы переменная могла принимать значение null.
  // В этом случае можем использовать nullable-типы, после названия типа
  // ставится оператор ?.
  String? name;
  print(name);      // null
  name = "Tom";
  print(name);      // Tom

  // Можно задать null в явном виде.
  String? nullableName = null;
  print(nullableName);

  // Оператор ?? при присвоении переменной значений выполнит проверку на null.
  int? num1 = 23;
  int num2 = num1 ?? 0;
  print(num2);        // 23

  num1 = null;
  num2 = num1 ?? 0;
  print(num2);    // 0

  // Когда переменной надо присвоить значение, если только она равна null.
  int? a;
  a = a ?? 10;
  print(a);

  // ??= сокращенная вариация b = b ?? 10.
  int? b;
  b ??= 10;
  print(b);
}