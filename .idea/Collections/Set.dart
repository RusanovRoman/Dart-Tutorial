// Set представляет неупорядоченный множество уникальных объектов.
/*
Основные свойства класса Set:
first: возвращает первый элемент
last: возвращает последний элемент
length: возвращает длину множества
isEmpty: возвращает true, если множество пусто
isNotEmpty: возвращает true, если множество не пусто

Основные методы множеств:
add(E value): добавляет элемент в множество
addAll(Iterable<E> iterable): добавляет в множество другую коллекцию
clear(): удаляет все элементы из множества
contains(Object element): возвращает true, если элемент содержится в множестве
containsAll(Iterable<Object?> other): возвращает true, если все элементы коллекции other содержатся в множестве
difference(Set<Object> other): возвращает разность текущего множества и множества other в виде другого множества
intersection(Set<Object> other): возвращает пересечение текущего множества и множества other в виде другого множества
remove(Object value): удаляет объект из множества
removeAll(Iterable<Object> elements): удаляет из множества все элементы коллекции elements
union(Set<E&g; other): возвращает объединение двух множеств - текущего и множества other
join([String separator = "" ]): объединяет все элементы множества в строку. Можно указать необязательный параметр separator, который будет раздлять элементы в строке
skip(int count): возвращает коллекцию, в которой отсутствуют первые count элементов
take(int count): возвращает коллекцию, которая содержит первые count элементов
where(bool test(E element)): возвращает коллекцию, элементы которой соответствуют некоторому условию, которое передается в виде функции
forEach(void action(E element)): вызывает для каждого элемента множества функцию action
 */

void main () {
  var set = {"Tom", "Bob", "Sam"};
  print(set); // {Tom, Bob, Sam}

  // Set хранит именно уникальные значения.
  var set2 = {"Tom", "Bob", "Sam", "Tom", "Bob"};
  print(set2); // {Tom, Bob, Sam}

  // Применение свойств
  print("Length: ${set.length}");         // 3
  print("First: ${set.first}");           // Tom
  print("Last: ${set.last}");             // Sam
  print("IsEmpty: ${set.isEmpty}");       // false
  print("IsNotEmpty: ${set.isNotEmpty}"); // true

  // Применение методов
  set.forEach(print);         // Перебор множества.
  print(set.elementAt(0));    // Получение элементов
  set.add("Alice");           // Добавление элемента
  print(set); // {Tom, Bob, Sam, Alice}
  set.addAll(["John", "Kate"]);   // Для добавления коллекции

  // Для проверки наличия элемента
  print(set.contains("Tom"));     // true
  print(set.contains("Alex"));    // false
  print(set.containsAll({"Tom", "Bob"}));     // true
  print(set.containsAll({"Tom", "Alex"}));    // false

  // удаление элемента
  set.remove("Bob");
  set.removeWhere((item)=>item.length ==3);  // если длина строки - 3 символа
  set.removeAll({"Alice", "Bob", "Alex"});  // конкретные

  // Операции над множествами
  var dart = {"Tom", "Alice", "Bob", "Mike"};     // изучают Dart
  var flutter = {"Tom", "Alice","Sam", "Kate"};   // изучают Flutter
  var setI = dart.intersection(flutter);   // учат и dart, и flutter одновременно
  print(setI);   // {Tom, Alice}

  var setU = dart.union(flutter);   // в обоих группах
  print(setU);   // {Tom, Alice, Bob, Mike, Sam, Kate}

  var setD = dart.difference(flutter);   // изучают dart, но не изучают flutter
  print(setD);   // {Bob, Mike}

}