// Records являются анонимным, неизменяемым типом, который, подобно
// типам коллекций, позволяет объединять несколько объектов в один объект.
// В других языках программирования есть аналогичная структура данных - кортежи

void main() {

  // Простейший кортеж:
  var person = ("Tom", 38);
  print(person);    // ("Tom", 38)

  // Явное определение кортежа
  (String, int, String) persons = ("Tom", 38, "Google");
  print(persons);

  // Обращение к элементам кортежа
  print(person.$1);   // Tom
  print(person.$2);   // 38

  // С помощью имени
  var person2 = (name:"Tom", age:38);
  print(person2.name);   // Tom
  print(person2.age);   // 38

  // Сравнение кортежей
  var tom = ("Tom", 38);
  var tomas = (name:"Tom", age:38);

  print(person == tom);     // true
  print(person == tomas);   // false

}
