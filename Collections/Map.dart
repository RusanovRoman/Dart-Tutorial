// Класс Map или словарь представляет коллекцию элементов,
// где каждый элемент имеет ключ и значение.
// Ключ и значение элемента могут представлять различные типы.
/*

Основные свойства Map
entries: возвращает объект Iterable<MapEntry<K, V>>, который представляет все элементы Map. Каждый отдельный элемент словаря представляет объект MapEntry
keys: возвращает объект Iterable<K>, который представляет все ключи Map
values: возвращает объект Iterable<V>, который представляет все значения Map
length: возвращает количество элементов в Map
isEmpty: возвращает true, если Map пуст
isNotEmpty: возвращает true, если Map имеет элементы

Основные методы Map
addAll(Map<K, V> other): добавляет в Map другой объект Map
addEntries(Iterable<MapEntry<K, V>> newEntries): добавляет в Map коллекцию Iterable<MapEntry<K, V>>
clear(): удаляет все элементы из Map
containsKey(Object key): возвращает true, если Map содержит ключ key
containsValue(Object value): возвращает true, если Map содержит значение value
forEach(): перебирает все элементы и для каждого из них вызывает определенную функцию
V putIfAbsent(K key, V ifAbsent()): если ключ key есть в Map, то возвращает значение по этому ключу. Если ключ отсутствует, то добавляет в Map значение, которое возвращается функцией isAbsent.
remove(Object key): удаляет из Map элемент с ключом key
*/

void main () {

  var map = { 1: "Tom", 2: "Bob", 3: "Sam" };
  var women = {4: "Kate", 5: "Clare"};
  var second = map[2];    // получим значение элемента с ключом 2
  print(second);          // Bob

  map[1] = "Tomas";       // изменим значение элемента с ключом 1
  print(map);             // {1: Tomas, 2: Bob, 3: Sam}

  // Применение свойств:
  print("Length: ${map.length}"); // Length: 3
  print("Empty: ${map.isEmpty}"); // Empty: false
  print(map.entries);     // (MapEntry(1: Tom), MapEntry(2: Bob), MapEntry(3: Sam))
  print(map.keys);        // (1, 2, 3)
  print(map.values);      // (Tom, Bob, Sam)

  // Применение методов:
  map.forEach((key, value) => print("$key - $value"));  // Перебор
  map[4] = "Alice";   // добавляем элемент с ключом 4
  print(map);     // {1: Tom, 2: Bob, 3: Sam, 4: Alice}
  map.addAll(women); // добавляем словарь women
  print(map);     // {1: Tom, 2: Bob, 3: Sam, 4: Kate, 5: Alice}
  map.remove(2);   // удаляем элемент с ключом 2

  // Проверка наличия элемента
  print(map.containsKey(2));          // true
  print(map.containsKey(4));          // false
  print(map.containsValue("Sam"));    // true
  print(map.containsValue("Tim"));    // false
}