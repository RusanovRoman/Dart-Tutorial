// Коллекции - List (Списки)
/*
Основные свойства списков:
first: возвращает первый элемент
last: возвращает последний элемент
length: возвращает длину списка
reversed: возвращает список, в котором все элементы расположены в противоположном порядке
isEmpty: возвращает true, если список пуст
isNotEmpty: возвращает true, если список имеет как минимум один элемент
 */

void main() {
  var list = ["Tom", "Bob", "Sam"];
  var people = ["Alice", "Kate"];
  var first = list[0];    // получаем первый элемент
  print(first);           //Tom
  list[0] = "Alice";      // изменяем первый элемент
  print(list);            // ["Alice", "Bob", "Sam"]

  // Применение свойств списка.
  print(list.first);          // Alice
  print(list.last);           // Sam
  print(list.isEmpty);        // false
  print(list.isNotEmpty);     // true
  print(list.length);         // 3

  var reversed = list.reversed;   // получаем список в обратном порядке
  print(reversed);            // (Sam, Bob, Alice)

  // Основные методы списка:
  list.forEach(print);    // Перебор списков.
  list.add("John");       // Добавление элементов
  list.addAll(people);    // Добавление элементов другого списка.
  list.insert(1, "Tony"); // Добавление элементов по индексу.
  list.remove("Bob");     // удаления одного элемента
  list.removeAt(2);       // удаление по индексу.
  list.removeWhere((item)=>item.length ==3);  //удаление если длина строки = 3 символа
  list.removeRange(1, 3);   // удаляем с 1 по 3 индексы
  String items = list.join(", "); // объединяет все элементы списка в строку
  list.sort();  // элементы сортируются по возрастанию (строки - в алфавитном порядке).
  // строки сортировались не в алфавитном порядке, а в зависимости от их длины.
  list.sort((item1, item2)=> item1.length - item2.length);

  // Неизменяемые списки
  const list2 = ["Tom", "Bob", "Sam"];
  final list3 = ["Tom", "Bob", "Sam"];

  // Cпособ создания неизменяемого списка
  final listFinal = List.unmodifiable(["Tom", "Bob", "Sam"]);

}

/*
Для управления списком Dart предоставляет богатую палитру методов. Отмечу лишь основные:
add(E value): добавляет элемент в конец списка
addAll(Iterable<E> iterable): добавляет в конец списка другой список
clear(): удаляет все элементы из списка
indexOf(E element): возвращает первый индекс элемента
insert(int index, E element): вставляет элемент на определенную позицию
remove(Object value): удаляет объект из списка (удаляется только первое вхождение элемена в список)
removeAt(int index): удаляет элементы по индексу
removeLast(): удаляет последний элемент списка
removeRange(int start, int end): удаляет диапазон элементов между индексами start и end
removeWhere(bool test(E element)): удаляет элементы, которые удовлетворяют условию, передаваемому в виде функции test
forEach(void f(E element)): производит над элементами списка некоторое действие, которое задается функцией-параметром, аналоги цикла for..in
sort(): сортирует список
sublist(int start, [ int end ]): возвращает часть списка от индекса start до индекса end
contains(Object element): возвращает true, если элемент содержится в списке
join([String separator = "" ]): объединяет все элементы списка в строку. Можно указать необязательный параметр separator, который будет раздлять элементы в строке
skip(int count): возвращает коллекцию, в которой отсутствуют первые count элементов
take(int count): возвращает коллекцию, которая содержит первые count элементов
where(bool test(E element)): возвращает коллекцию, элементы которой соответствуют некоторому условию, которое передается в виде функции
 */