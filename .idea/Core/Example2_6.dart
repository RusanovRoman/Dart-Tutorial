void main()
{
  // Условные выражения.
  int a = 10;
  int b = 4;

  // Оператор равенства.
  bool c = a == b;        // false
  bool d = a == 10;       // true
  print(c); print(d);

  // Оператор неравенства.
  bool e = a != b;        // true
  bool f = a != 10;       // false
  print(e); print(f);

  // Операторы больше и меньше.
  bool g = a < b;  // false
  bool h = a < 23; // true
  bool j = a > b;  // true
  bool k = a > 23; // false
  print(g); print(h);
  print(j); print(k);

  // Операторы больше или равно и меньше или равно.
  bool l = 10 >= 20;   // false
  bool m = 10 <= 20;   // true
  print(l); print(m);

  // Логические операции.
  bool a1 = (5 > 6) || (4 < 6); // 5 > 6 - false, 4 < 6 - true, поэтому возвращается true
  bool a2 = (5 > 6) || (4 > 6); // 5 > 6 - false, 4 > 6 - false, поэтому возвращается false
  bool a3 = (5 > 6) && (4 < 6); // 5 > 6 - false, 4 < 6 - true, поэтому возвращается false
  bool a4 = (50 > 6) && (4 / 2 < 3); // 50 > 6 - true, 4/2 < 3 - true, поэтому возвращается true
  bool a5 = (5 > 6) ^ (4 < 6); // 5 > 6 - false, 4 < 6 - true, поэтому возвращается true
  bool a6 = (50 > 6) ^ (4 / 2 < 3); // 50 > 6 - true, 4/2 < 3 - true, поэтому возвращается false
  print(a1); print(a2);
  print(a3); print(a4);
  print(a5); print(a6);

}
